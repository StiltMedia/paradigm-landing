class ClientsController < InheritedResources::Base
  before_action :authenticate_admin_user!, only: [:edit, :update, :destroy]

  private

    def client_params
      params.require(:client).permit(:name, :bio, :image)
    end
end
