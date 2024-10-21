class Comment < ApplicationRecord
  belongs_to :user
  has_many :temperatures_comments, class_name: 'TemperatureComment'
  has_many :temperatures, through: :temperatures_comments
end
