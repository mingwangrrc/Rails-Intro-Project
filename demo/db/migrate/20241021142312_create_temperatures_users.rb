class CreateTemperatureUsers < ActiveRecord::Migration[7.1]
  def change
    create_table :temperatures_users, id: false do |t|
      t.belongs_to :temperature, index: true
      t.belongs_to :user, index: true
    end
  end
end