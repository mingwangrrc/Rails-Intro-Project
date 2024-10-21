class City < ApplicationRecord
  has_many :temperatures
  validates :city, presence: true
end
