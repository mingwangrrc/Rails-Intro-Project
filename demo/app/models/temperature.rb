class Temperature < ApplicationRecord
  belongs_to :city
  has_many :temperatures_comments,  class_name: 'TemperatureComment'
  has_many :comments, through: :temperatures_comments
  has_many :temperatures_users, class_name: 'TemperatureUser'
  has_many :users, through: :temperatures_users
end
