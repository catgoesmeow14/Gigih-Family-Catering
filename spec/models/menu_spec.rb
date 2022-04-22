require 'rails_helper'

RSpec.describe Menu, type: :model do
  it 'is valid with a name, a description, and a price' do
    menu = Menu.new(
      name: 'Mie Ayam Bakso',
      description: 'Indonesian chicken noodles with meatballs.',
      price: 15000.0
    )

    expect(menu).to be_valid
  end

  it 'is INVALID without a name' do
    menu = Menu.new(
      name: nil,
      description: 'Indonesian chicken noodles with meatballs.',
      price: 15000.0
    )

    menu.valid?

    expect(menu.errors[:name]).to include("can't be blank")
  end

  it 'is INVALID without a description' do
    menu = Menu.new(
      name: 'Mie Ayam Bakso',
      description: nil,
      price: 15000.0
    )

    menu.valid?

    expect(menu.errors[:description]).to include("can't be blank")
  end

  it 'is INVALID without a price' do
    menu = Menu.new(
      name: 'Mie Ayam Bakso',
      description: 'Indonesian chicken noodles with meatballs.',
      price: nil
    )

    menu.valid?

    expect(menu.errors[:price]).to include("can't be blank")
  end

end

# validates :name, presence: true, uniqueness: true
# validates :price, presence: true, numericality: { greater_than: 0.00 }
# validates :description, presence: true, length: { maximum: 150 }

# t.string "name"
#     t.text "description"
#     t.float "price"
