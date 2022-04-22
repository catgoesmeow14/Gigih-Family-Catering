class CreateCategoryDetails < ActiveRecord::Migration[7.0]
  def change
    create_table :category_details do |t|
      t.belongs_to :category, null: false, foreign_key: true
      t.belongs_to :menu, null: false, foreign_key: true

      t.timestamps
    end
  end
end
