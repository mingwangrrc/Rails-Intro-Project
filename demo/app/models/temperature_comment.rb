class TemperatureComment < ApplicationRecord
  self.table_name = "temperatures_comments"
  belongs_to :comment
  belongs_to :temperature
end
