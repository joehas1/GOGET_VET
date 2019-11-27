
class VetsController < ApplicationController
  def index
    #current_client = Client.find_by(user_id: current_user.id)
    #Client.update(current_client.id, :latitude => params[:latitude], :longitude => params[:longitude])
    #Person.update(15, :user_name => 'Samuel', :group => 'expert')

    #@vets =Vet.all
    language_array = []
    vets = Vet.near("Campeche 233, Hipódromo, Cuauhtémoc, 06100 Ciudad de México, CDMX, Mexico", 200)

    language_array << "french" if params[:french] == "on"

    language_array << "english" if params[:english] == "on"

    language_array << "spanish" if params[:spanish] == "on"

    language_array << "german" if params[:german] == "on"

    language_array << "italian" if params[:italian] == "on"

    language_array << "chinese" if params[:chinese] == "on"

    language_array.join(" ")

    @vets = vets.where("languages @@ ?", language_array.join(" "))
  end


end

# Venue.near([40.71, 99.23], :effective_radius)
# Venue.near("Austin, TX", 200, min_radius: 40)
