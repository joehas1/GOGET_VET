class Vet < ApplicationRecord
  belongs_to :user
  has_many :favorited_vets
  has_many :appointments
end
