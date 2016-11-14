class PortfoliosController < ApplicationController
  before_action :find_portfolio, only: [:show, :edit, :update, :destroy]
  before_action :authenticate_user!, except: [:index, :show]

  def new
    @portfolio = Portfolio.new
  end

  def create
    @portfolio = Portfolio.new portfolio_params

    if @portfolio.save
      redirect_to root_path, notice: "portfolio Created!"
    else
      render 'new', notice: "Sorry portfolio failed to create!!!"
    end
  end

  def edit
  end

  def update
    if @portfolio.update portfolio_params
      redirect_to root_path, notice: "You Updated: #{@portfolio.title}."
    else
      render 'edit'
    end
  end

  def show

  end

  def destroy
    @portfolio.destroy
    redirect_to root_path
  end

  private

  def portfolio_params
    params.require(:portfolio).permit(:title, :description, :portfolios_img)
  end

  def find_portfolio
    @portfolio = Portfolio.find(params[:id])
  end

end
