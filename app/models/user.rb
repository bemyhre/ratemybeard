class User < ActiveRecord::Base
  has_many :stagings
  has_many :pictures, through: :stagings
end