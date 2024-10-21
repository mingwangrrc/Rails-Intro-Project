class CreateCities < ActiveRecord::Migration[7.1]
  def change
    create_table :cities do |t|
      t.string :city
      t.string :state
      t.string :country
      t.string :region

      t.timestamps
    end
  end
end
