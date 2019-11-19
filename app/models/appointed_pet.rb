class AppointedPet < ApplicationRecord
  belongs_to :appointment
  belongs_to :pet
end
