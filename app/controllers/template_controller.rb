class TemplateController < ApplicationController
  before_action :find_content, only: [:show, :edit, :update, :destroy, :ledit]

  def index
    @contents = Content.all
    @headers = Header.all
    @services = Service.all.order("created_at asc")
    @slogan = Slogan.all
    @portfolios = Portfolio.all.order("created_at asc")
    @contacts = Contact.all
    @footers = Footer.all
    @title = Title.all
  end

  def edit
    @contents = Content.all
    @services = Service.all.order("created_at asc")
    @portfolios = Portfolio.all.order("created_at asc")
  end

end
