class CreateConsoles < ActiveRecord::Migration[5.2]
  def change
    create_table :consoles do |t|
      t.string :photo
      t.string :brand
      t.string :model
      t.text :description
      t.string :address
      t.boolean :booked, default: false, null: false
      t.integer :price
      t.integer :number_of_pads
      t.references :user, foreign_key: true

      t.timestamps
    end
  end
end
