class ServicesController < ApplicationController
  before_action :find_service, only: [:show, :edit, :update, :destroy]

  def new
    @service = Service.new
  end

  def create
    @service = Service.new service_params

    if @service.save
      redirect_to root_path, notice: "service Created!"
    else
      render 'new', notice: "Sorry service failed to create!!!"
    end
  end

  def edit
  end

  def update
    if @service.update service_params
      redirect_to root_path, notice: "You Updated: #{@service.title}."
    else
      render 'edit'
    end
  end

  def destroy
    @service.destroy
    redirect_to root_path
  end

  private

  def service_params
    params.require(:service).permit(:title, :description, :services_img)
  end

  def find_service
    @service = Service.find(params[:id])
  end

end
