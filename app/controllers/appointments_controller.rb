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
    #@vet = Vet.find(params[:vet][:vet_id])
    @vet = Vet.first
    @appointment = Appointment.new
  end

  def create
    @vet = Vet.find(params[:vet_id])
    @appointment = Appointment.new(appointment_params)
    # authorize @appointment
    @appointment.date_time = "2019-11-#{params[:appointment]['check_out_date_time(3i)']}"
    @appointment.client = current_user
    @appointment.vet = @vet
    @appointment.save!
    redirect_to appointments_path(@appointment)
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
