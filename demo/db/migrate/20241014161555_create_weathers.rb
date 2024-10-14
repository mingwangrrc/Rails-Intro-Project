class CreateWeathers < ActiveRecord::Migration[7.1]
  def change
    create_table :weathers do |t|
      t.string :weather
      t.string :record_date_id
      t.string :city_id

      t.timestamps
    end
  end
end
