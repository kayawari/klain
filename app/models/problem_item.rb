class ProblemItem < ApplicationRecord
  belongs_to :kpt
  include CommonKptItemValidator
end