class Pet < ApplicationRecord
  belongs_to :client
  has_one :appointed_pet
end
