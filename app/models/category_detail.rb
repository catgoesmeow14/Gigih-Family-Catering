class CategoryDetail < ApplicationRecord
  validates :menu_id, presence: true
  validates :category_id, presence: true
  
  belongs_to :category
  belongs_to :menu
end
