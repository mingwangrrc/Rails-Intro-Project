class User < ApplicationRecord
  has_many :comments
  validates :username, presence: true
  validates :email, presence: true
  has_many :temperatures_users, class_name: 'TemperatureComment'
  has_many :temperatures, through: :temperatures_users
end
