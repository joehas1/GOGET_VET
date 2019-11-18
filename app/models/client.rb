class Client < ApplicationRecord
  belongs_to :user
  has_many :pets
  has_many :appointments
  has_many :favorited_vets
end
