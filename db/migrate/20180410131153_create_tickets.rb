class CreateTickets < ActiveRecord::Migration[5.1]
  def change
    create_table :tickets do |t|
      t.string :name, null: false
      t.string :status, null: false
      t.integer :quantity, null: false
      t.integer :price, null: false
      t.references :event, foreign_key: true, null: false

      t.timestamps
    end
  end
end
