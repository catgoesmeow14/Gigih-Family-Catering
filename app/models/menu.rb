class Menu < ApplicationRecord
    validates :name, presence: true, uniqueness: true
    validates :price, presence: true, numericality: { greater_than: 0.00 }
    validates :description, presence: true, length: { maximum: 150 }

    has_many :category_details
    has_many :categories, through: :category_details

    has_many :order_details
    has_many :orders, through: :order_details
end
