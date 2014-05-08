class Picture < ActiveRecord::Base
  has_many :stagings
  has_many :users, through: :stagings
end