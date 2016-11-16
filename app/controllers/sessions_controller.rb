class SessionsController < Devise::SessionsController
  def new
    @contents = Content.all
    super
  end

  def create
    @contents = Content.all
    super
  end

  def destroy
    @contents = Content.all
    super
  end
end
