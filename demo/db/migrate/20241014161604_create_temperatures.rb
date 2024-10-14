class CreateTemperatures < ActiveRecord::Migration[7.1]
  def change
    create_table :temperatures do |t|
      t.string :avg_temp
      t.string :record_date_id
      t.string :city_id

      t.timestamps
    end
  end
end
