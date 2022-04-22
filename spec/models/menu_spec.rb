require 'rails_helper'

RSpec.describe Menu, type: :model do
  it 'is valid with a name and a price' do
    menu = Menu.new(
      name: 'Mie Ayam Bakso',
      description: 'Indonesian chicken noodles with meatballs.',
      price: 15000.0
    )

    expect(menu).to be_valid
  end
end

# t.string "name"
#     t.text "description"
#     t.float "price"
