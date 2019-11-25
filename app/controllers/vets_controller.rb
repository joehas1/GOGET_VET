class VetsController < ApplicationController
  def index
    @vets= Vet.all
    # @vets = Vet.near(params[:location].to_s, 200)
  end
end

# Venue.near([40.71, 99.23], :effective_radius)
# Venue.near("Austin, TX", 200, min_radius: 40)
