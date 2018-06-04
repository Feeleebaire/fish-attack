class Spot < ApplicationRecord
  geocoded_by :addresse
  after_validation :geocode, if: :will_save_change_to_address?
  #validations
  validates :name, presence: true
  validates :addresse, presence: true
  #associtions
end
