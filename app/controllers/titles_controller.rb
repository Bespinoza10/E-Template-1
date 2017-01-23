class TitlesController < ApplicationController
  before_action :find_title, only: [:show, :edit, :update, :destroy]
  before_action :authenticate_user!, except: [:index, :show]

  def new
    @title = Title.new

  end

  def create
    @title = Title.new title_params

    if @title.save
      redirect_to root_path, notice: "title Created!"
    else
      render 'new', notice: "Sorry title failed to create!!!"
    end
  end

  def edit
    @contents = Content.all
  end

  def update
    if @title.update title_params
      redirect_to root_path, notice: "You Updated your title."
    else
      render 'edit'
    end
  end

  def destroy
    @title.destroy
    redirect_to root_path
  end

  private

  def title_params
    params.require(:title).permit(:services_title, :logo_name)
  end

  def find_title
    @title = Title.find(params[:id])
  end

end
