class Kpt < ActiveRecord::Base
  with_options inverse_of: :kpt do |assoc|
    assoc.has_many :keep_items
    assoc.has_many :problem_items
    assoc.has_many :try_items
  end

  validates :title, presence: true

  accepts_nested_attributes_for :keep_items, allow_destroy: true
  accepts_nested_attributes_for :problem_items, allow_destroy: true
  accepts_nested_attributes_for :try_items, allow_destroy: true
end