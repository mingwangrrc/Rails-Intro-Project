class State < ApplicationRecord
  belongs_to :contry_id
  validates :name, presence: true
end
