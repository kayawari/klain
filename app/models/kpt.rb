class Kpt < ActiveRecord::Base
  has_many :keep_items
  has_many :problem_items
  has_many :try_items

  accepts_nested_attributes_for :keep_items
  accepts_nested_attributes_for :problem_items
  accepts_nested_attributes_for :try_items
end