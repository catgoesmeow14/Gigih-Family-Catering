class Category < ApplicationRecord
    has_many :category_details
    has_many :menus, through: :category_details
end
