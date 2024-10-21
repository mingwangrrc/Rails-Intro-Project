class CreateTemperatures < ActiveRecord::Migration[7.1]
  def change
    create_table :temperatures do |t|
      t.float :avg_temp
      t.date :date
      t.references :city, null: false, foreign_key: true
      t.references :user, null: true
      t.references :comment, null: true

      t.timestamps
    end
  end
end
