class ContentsController < ApplicationController
  before_action :find_content, only: [:show, :edit, :update, :destroy]
  before_action :authenticate_user!, except: [:index, :show]

  def index
    @contents = Content.all
    @services = Service.all.order("created_at asc")
    @portfolios = Portfolio.all.order("created_at asc")
  end

  def new
    @content = Content.new
  end

  def create
    @content = Content.new content_params

    if @content.save
      redirect_to root_path, notice: "content Created!"
    else
      render 'new', notice: "Sorry content failed to create!!!"
    end
  end

  def edit
    @contents = Content.all
  end

  def update
    if @content.update content_params
      redirect_to root_path, notice: "You Updated: #{@content.name}."
    else
      render 'edit'
    end
  end

  def destroy
    @content.destroy
    redirect_to content_path
  end

  private

  def content_params
    params.require(:content).permit(:name, :header_title, :services_title, :slogan_title, :about_title, :about_description, :contact_title, :contact_subtitle, :fb_username, :ig_username, :twitter_username, :in_username, :pin_username)
  end

  def find_content
    @content = Content.find(params[:id])
  end
end
