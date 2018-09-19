class TryItem < ApplicationRecord
  belongs_to :kpt
  include CommonKptItemValidator
end