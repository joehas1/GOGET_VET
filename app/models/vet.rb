class Vet < ApplicationRecord
  belongs_to :user
  has_many :favorites
  has_many :appointments
end
