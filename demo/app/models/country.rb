class Country < ApplicationRecord
  belongs_to :regin
  has_many :states
  validates :name, presence: true
end
