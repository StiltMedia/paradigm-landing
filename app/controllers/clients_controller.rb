class ClientsController < InheritedResources::Base
  before_action :authenticate_admin_user!, only: [:edit, :update, :destroy]

  def index
    if params[:tag]
      @clients = Client.tagged_with(params[:tag])
    else
      @clients = Client.all
    end
  end

  private

    def client_params
      params.require(:client).permit(:name, :bio, :image, :tag_list)
    end
end
