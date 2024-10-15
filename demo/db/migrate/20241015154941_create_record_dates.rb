class CreateRecordDates < ActiveRecord::Migration[7.1]
  def change
    create_table :record_dates do |t|
      t.string :date

      t.timestamps
    end
  end
end
