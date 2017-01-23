class LogosController < ApplicationController
  before_action :find_logo, only: [:show, :edit, :update, :destroy]
  before_action :authenticate_user!, except: [:index, :show]

  def new
    @logo = Logo.new

  end

  def create
    @logo = Logo.new logo_params

    if @logo.save
      redirect_to root_path, notice: "logo Created!"
    else
      render 'new', notice: "Sorry logo failed to create!!!"
    end
  end

  def edit
    @contents = Content.all
  end

  def update
    if @logo.update logo_params
      redirect_to root_path, notice: "You Updated your logo."
    else
      render 'edit'
    end
  end

  def destroy
    @logo.destroy
    redirect_to root_path
  end

  private

  def logo_params
    params.require(:logo).permit(:name)
  end

  def find_logo
    @logo = Logo.find(params[:id])
  end
end
