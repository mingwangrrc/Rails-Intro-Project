class Regin < ApplicationRecord
  has_many :countries
  validates :name, presence: true, uniqueness: true
end
