class ContactsController < InheritedResources::Base

  before_action :authenticate_admin_user!, only: [:edit, :update, :destroy, :index, :show]

  def create
  @contact = Contact.new(contact_params)
  if @contact.save
    redirect_to thanks_path
  else
    render :action => 'new'
  end
end

  private

    def contact_params
      params.require(:contact).permit(:name, :email, :phone, :contact_type, :message)
    end
end
