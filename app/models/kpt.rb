class Kpt < ActiveRecord::Base
  has_many :keeps
  has_many :problems
  has_many :tries
end