class CreateComments < ActiveRecord::Migration[7.1]
  def change
    create_table :comments do |t|
      t.string :comment
      t.date :date
      t.references :user, null: false
      t.references :temperature, null: true,

      t.timestamps
    end
  end
end
