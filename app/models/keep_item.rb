class KeepItem < ApplicationRecord
  belongs_to :kpt
  include CommonKptItemValidator
end