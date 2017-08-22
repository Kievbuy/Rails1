class ContactsController < ApplicationController
  
  def new
  end
  
  def create
    @contact = Contact.new(content_params)
    @contact.save
  end

  private

  def content_params
    params.require(:contact).permit(:name, :phone, :email, :message)
  end
end