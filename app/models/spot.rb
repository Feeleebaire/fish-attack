class Spot < ApplicationRecord
  #validations
  validates :name, presence: true
  validates :lat, presence: true
  validates :long, presence: true
  validates :adresse, presence: true
  #associtions
end
