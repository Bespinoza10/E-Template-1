class ContactsController < ApplicationController
  before_action :find_contact, only: [:show, :edit, :update, :destroy]
  before_action :authenticate_user!, except: [:index, :show]

  def new
    @contact = Contact.new
  end

  def create
    @contact = Contact.new contact_params

    if @contact.save
      redirect_to root_path, notice: "Contact Created!"
    else
      render 'new', notice: "Sorry contact failed to create!!!"
    end
  end

  def edit
    # @contents = Content.all
  end

  def update
    if @contact.update contact_params
      redirect_to root_path, notice: "Contact Form Update Sucessful."
    else
      render 'edit'
    end
  end

  def destroy
    @contact.destroy
    redirect_to root_path
  end

  private

  def contact_params
    params.require(:contact).permit(:contact_title, :contact_subtitle, :contact_bg)
  end

  def find_contact
    @contact = Contact.find(params[:id])
  end

end
