class CreateOrderItems < ActiveRecord::Migration[5.1]
  def change
    create_table :order_items do |t|
      t.references :ticket, foreign_key: true, null: false
      t.references :order, foreign_key: true, null: false
      t.integer :quantity, null: false
      t.integer :price, null: false

      t.timestamps
    end
  end
end
