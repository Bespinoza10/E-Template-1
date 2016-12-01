class SlogansController < ApplicationController
  before_action :find_slogan, only: [:show, :edit, :update, :destroy]
  before_action :authenticate_user!, except: [:index, :show]

  def new
    @slogan = Slogan.new
    @contents = Content.all
  end

  def create
    @slogan = Slogan.new slogan_params

    if @slogan.save
      redirect_to root_path, notice: "Slogan Created!"
    else
      render 'new', notice: "Sorry slogan failed to create!!!"
    end
  end

  def edit
    @contents = Content.all
  end

  def update
    if @slogan.update slogan_params
      redirect_to root_path, notice: "You Updated your Slogan."
    else
      render 'edit'
    end
  end

  def destroy
    @slogan.destroy
    redirect_to root_path
  end

  private

  def slogan_params
    params.require(:slogan).permit(:title)
  end

  def find_slogan
    @slogan = slogan.find(params[:id])
  end

end
