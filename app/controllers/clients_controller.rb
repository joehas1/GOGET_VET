class ClientsController < ApplicationController
  def index
    @clients = Client.all
  end

  def show
    @client = Client.find(params[:id])
  end

  def new
    @client = Client.new
  end

  def create
    @client = Client.new(client_params)
    @client.user = current_user
    @client.save!
    redirect_to client_path(@client)
  end

  private

  def find_venue
    @client = Client.find(params[:id])
  end

  def client_params
    params.require(:client).permit(:address, :languages)
  end
end
