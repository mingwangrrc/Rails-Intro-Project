class Country < ApplicationRecord
  belongs_to :regin_id
  has_many :states
end
