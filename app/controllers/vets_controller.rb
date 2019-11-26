
class VetsController < ApplicationController
  def index
    #@vets =Vet.all
    language_array = []
    vets = Vet.near(params[:address].to_s, 200)

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
