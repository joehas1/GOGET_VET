class FavoritedVet < ApplicationRecord
  belongs_to :vet
  belongs_to :client
end
