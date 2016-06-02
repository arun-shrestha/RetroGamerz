class User < ApplicationRecord 
  validates :name, presence: true, uniqueness: true
  has_many :games
  # has_secure_password
end
