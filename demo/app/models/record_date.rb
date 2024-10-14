class RecordDate < ApplicationRecord
  has_many :weathers
  has_many :temperatures
end
