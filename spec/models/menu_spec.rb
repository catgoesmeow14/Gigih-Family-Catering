require 'rails_helper'

RSpec.describe Menu, type: :model do
  it "has a valid factory" do
    expect(FactoryBot.build(:menu)).to be_valid
  end

  it 'is valid with a name, a description, and a price' do
    expect(FactoryBot.build(:menu)).to be_valid
  end

  it 'is INVALID without a name' do
    menu = FactoryBot.build(:menu, name: nil)

    menu.valid?

    expect(menu.errors[:name]).to include("can't be blank")
  end

  it 'is INVALID without a description' do
    menu = FactoryBot.build(:menu, description: nil)

    menu.valid?

    expect(menu.errors[:description]).to include("can't be blank")
  end

  it 'is INVALID without a price' do
    menu = FactoryBot.build(:menu, price: nil)

    menu.valid?

    expect(menu.errors[:price]).to include("can't be blank")
  end

  it "is INVALID with a duplicate name" do
    menu1 = FactoryBot.create(:menu, name: 'Mie Ayam Bakso')
    menu2 = FactoryBot.build(:menu, name: 'Mie Ayam Bakso')

    menu2.valid?
    
    expect(menu2.errors[:name]).to include("has already been taken")
  end

  it 'is INVALID if price less than 0.01' do
    menu = FactoryBot.build(:menu, price: 0.0)

    menu.valid?

    expect(menu.errors[:price]).to include("must be greater than 0.0")
  end

  it 'is INVALID if description more than 150 characters long' do
    menu = FactoryBot.build(:menu, description: 'Indonesian chicken noodles with meatballs. 
                                                  This food is suitable to be eaten on cloudy or rainy 
                                                  weather. Mie Ayam Bakso is suitable when combined with 
                                                  a glass of warm tea.')

    menu.valid?

    expect(menu.errors[:description]).to include("is too long (maximum is 150 characters)")
  end
end
