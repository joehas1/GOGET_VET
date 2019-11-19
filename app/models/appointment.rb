class Appointment < ApplicationRecord
  belongs_to :vet
  belongs_to :client
  has_many :appointed_pets
end
