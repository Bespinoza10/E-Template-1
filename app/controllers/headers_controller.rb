class HeadersController < ApplicationController
  before_action :find_header, only: [:show, :edit, :update, :destroy]
  before_action :authenticate_user!, except: [:index, :show]

  def new
    @header = Header.new
    @contents = Content.all
  end

  def create
    @header = Header.new header_params

    if @header.save
      redirect_to root_path, notice: "header Created!"
    else
      render 'new', notice: "Sorry header failed to create!!!"
    end
  end

  def edit
    @contents = Content.all
  end

  def update
    if @header.update header_params
      redirect_to root_path, notice: "You Updated: #{@header.title}."
    else
      render 'edit'
    end
  end

  def destroy
    @header.destroy
    redirect_to root_path
  end

  private

  def header_params
    params.require(:header).permit(:title, :header_bg)
  end

  def find_header
    @header = Header.find(params[:id])
  end

end
