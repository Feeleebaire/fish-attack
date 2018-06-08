class Session < ApplicationRecord
  belongs_to :user
  belongs_to :spot
  belongs_to :type_fishing
end
