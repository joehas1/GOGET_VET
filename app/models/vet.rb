class Vet < ApplicationRecord
  belongs_to :user
  has_many :favorited_vets
  has_many :appointments
  geocoded_by :address
  after_validation :geocode, if: :will_save_change_to_address?
end
