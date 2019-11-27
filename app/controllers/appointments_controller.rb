class AppointmentsController < ApplicationController
  before_action :find_appointment, only: [:show, :destroy]

  def show
    @vet = @appointment.vet
    @client = @appointment.client
    @markers = {
      lat: @vet.latitude,
      lng: @vet.longitude
    },
    {
      lat: @client.latitude,
      lng: @client.longitude
    }
  end

  def new

    @vet = Vet.find(params[:vet_id])
    current_client = Client.find_by(user_id: current_user.id)
    @pets = Pet.where(client_id: current_client)
    #@vet = Vet.first
    @appointment = Appointment.new
  end

  def create

    @vet = Vet.find(params[:vet_id])
    @appointment = Appointment.new()
    #authorize @appointment
    @appointment.client = Client.find_by(user_id: current_user.id)
    @appointment.vet = @vet
    @appointment.save!
    redirect_to appointment_path(@appointment)
  end

  def destroy
    @appointment.destroy
    redirect_to root_path notice: 'Your appointment has been cancelled.'
  end

  private

  def appointment_params
    params.require(:appointment).permit(:date_time, :description, :address, :approved, :vet_id, :client_id)
  end

  def find_appointment
    @appointment = Appointment.find(params[:id])
  end
end
