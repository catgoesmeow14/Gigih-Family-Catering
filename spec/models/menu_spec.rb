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

  it "is INVALID with a duplicate name" do
    menu1 = Menu.create(
      name: 'Mie Ayam Bakso',
      description: 'Indonesian chicken noodles with meatballs.',
      price: 15000.0
    )
    
    menu2 = Menu.new(
      name: 'Mie Ayam Bakso',
      description: 'The combination of noodles with chicken and meatballs.',
      price: 15000.0
    )

    menu2.valid?
    
    expect(menu2.errors[:name]).to include("has already been taken")
  end

  it 'is INVALID if price less than 0.01' do
    menu = Menu.new(
      name: 'Mie Ayam Bakso',
      description: 'Indonesian chicken noodles with meatballs.',
      price: 0.0
    )

    menu.valid?

    expect(menu.errors[:price]).to include("must be greater than 0.0")
  end



end

# validates :name, presence: true, uniqueness: true
# validates :price, presence: true, numericality: { greater_than: 0.00 }
# validates :description, presence: true, length: { maximum: 150 }

# t.string "name"
#     t.text "description"
#     t.float "price"
