class Client < ApplicationRecord
  belongs_to :user
  has_many :pets
  has_many :appointments
  has_many :favorited_vets
  geocoded_by :address
  after_validation :geocode, if: :will_save_change_to_address?
end
