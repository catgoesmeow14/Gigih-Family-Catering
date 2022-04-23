class Category < ApplicationRecord
    validates :category_name, presence: true, format: { with: /\A[a-zA-Z ]+\z/, message: "only allows letters" }, uniqueness: true
    
    has_many :category_details
    has_many :menus, through: :category_details
end
