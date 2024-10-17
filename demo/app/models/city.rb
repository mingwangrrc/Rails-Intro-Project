class City < ApplicationRecord
  has_many :weathers
  has_many :temperatures
  belongs_to :state
  validates :name, presence: true, uniqueness: true
end
