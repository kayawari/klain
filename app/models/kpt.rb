class Kpt < ActiveRecord::Base
  has_many :keep_items, inverse_of: :kpt
  has_many :problem_items, inverse_of: :kpt
  has_many :try_items, inverse_of: :kpt

  accepts_nested_attributes_for :keep_items, reject_if: :all_blank, allow_destroy: true
  accepts_nested_attributes_for :problem_items, reject_if: :all_blank, allow_destroy: true
  accepts_nested_attributes_for :try_items, reject_if: :all_blank, allow_destroy: true
end