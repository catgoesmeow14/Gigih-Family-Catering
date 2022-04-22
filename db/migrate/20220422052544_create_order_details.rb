class CreateOrderDetails < ActiveRecord::Migration[7.0]
  def change
    create_table :order_details do |t|
      t.integer :qty
      t.belongs_to :order, null: false, foreign_key: true
      t.belongs_to :menu, null: false, foreign_key: true

      t.timestamps
    end
  end
end
