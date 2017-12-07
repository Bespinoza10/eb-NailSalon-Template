class ContactsController < ApplicationController
  def new
    @contact = Contact.new
    @promotions = Promotion.all.order("created_at")
  end

  def create
    @promotions = Promotion.all.order("created_at")
    @contact = Contact.new(params[:contact])
    @contact.request = request
    if @contact.deliver
      flash.now[:error] = nil
    else
      flash.now[:error] = "Sorry can't send. Please try again."
      render :new
    end
  end
end
