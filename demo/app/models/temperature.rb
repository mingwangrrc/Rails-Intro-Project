class Temperature < ApplicationRecord
  belongs_to :record_date
  belongs_to :city
end
