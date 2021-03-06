class CreateOrders < ActiveRecord::Migration[7.0]
  def change
    create_table :orders do |t|
      t.float :total_price
      t.date :order_date
      t.string :status
      t.belongs_to :customer, null: false, foreign_key: true

      t.timestamps
    end
  end
end
