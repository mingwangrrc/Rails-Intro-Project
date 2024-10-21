class CreateComments < ActiveRecord::Migration[7.1]
  def change
    create_table :comments do |t|
      t.string :comment
      t.date :date
      t.references :user, null: false, foreign_key: true
      t.references :temperature, null: false, foreign_key: true

      t.timestamps
    end
  end
end
