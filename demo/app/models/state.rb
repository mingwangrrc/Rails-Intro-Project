class State < ApplicationRecord
  belongs_to :country
  validates :name, presence: true, uniqueness: true
end
