class City < ApplicationRecord
  has_many :weathers
  has_many :temperatures
  belongs_to :state_id
  validates :name, presence: true
end
