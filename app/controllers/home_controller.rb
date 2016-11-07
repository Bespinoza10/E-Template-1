class HomeController < ApplicationController

  def index
    @home = Home.all.order("created_at desc")

  end

  def new
    @home = Home.new
  end

  def create
    @home = home.new home_params

    if @home.save
      redirect_to @home, notice: "home Created!"
    else
      render 'new', notice: "Sorry home failed to create!!!"
    end
  end

  def show

  end

  def edit
  end

  def update
    if @home.update home_params
      redirect_to @home, notice: "You Updated: #{@home.name}."
    else
      render 'edit'
    end
  end

  def destroy
    @home.destroy
    redirect_to home_path
  end

  private

  def home_params
    params.require(:home).permit(:name, :header_title, :services_title, :slogan_title, :about_title, :about_description, :contact_title, :contact_subtitle, :fb_username, :ig_username, :twitter_username, :in_username, :pin_username)
  end

  def find_home
    @home = Home.find(params[:id])
  end
end
