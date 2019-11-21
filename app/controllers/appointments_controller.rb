class AppointmentsController < ApplicationController
  before_action :find_appointment, only: [:show, :destroy]

  def show
    @vet = @appointment.vet
  end

  def new
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
    redirect_to appoints_path(@appointment)
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
