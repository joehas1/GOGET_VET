class VetsController < ApplicationController

  def index
    @vets = Vet.all
  end

end
