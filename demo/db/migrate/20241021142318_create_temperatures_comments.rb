class CreateTemperatureComments < ActiveRecord::Migration[7.1]
  def change
    create_table :temperatures_comments, id: false do |t|
      t.belongs_to :temperature, index: true
      t.belongs_to :comment, index: true
    end
  end
end
