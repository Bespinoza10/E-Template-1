class FootersController < ApplicationController
  before_action :find_footer, only: [:show, :edit, :update, :destroy]
  before_action :authenticate_user!, except: [:index, :show]

  def new
    @footer = Footer.new
    @contents = Content.all
  end

  def create
    @footer = Footer.new footer_params

    if @footer.save
      redirect_to root_path, notice: "Footer Created!"
    else
      render 'new', notice: "Sorry footer failed to create!!!"
    end
  end

  def edit
    @contents = Content.all
  end

  def update
    if @footer.update footer_params
      redirect_to root_path, notice: "You Updated your Footer."
    else
      render 'edit'
    end
  end

  def destroy
    @footer.destroy
    redirect_to root_path
  end

  private

  def footer_params
    params.require(:footer).permit( :fb_username, :ig_username, :twitter_username, :in_username, :pin_username)
  end

  def find_footer
    @footer = Footer.find(params[:id])
  end

end
