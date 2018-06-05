class Spot < ApplicationRecord
  geocoded_by :addresse
  after_validation :geocode, if: :will_save_change_to_addresse?
  #validations
  #validates :name, presence: true
  #validates :addresse, presence: true
  #associations
end
