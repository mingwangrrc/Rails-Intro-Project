class TemperatureUser < ApplicationRecord
  self.table_name = "temperatures_users"
  belongs_to :user
  belongs_to :temperature
end
