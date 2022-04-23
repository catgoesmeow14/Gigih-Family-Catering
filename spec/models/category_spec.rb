require 'rails_helper'

RSpec.describe Category, type: :model do
  it 'has a valid category' do
    expect(FactoryBot.build(:category)).to be_valid
  end

  it 'is invalid without a name' do
    category = FactoryBot.build(:category, name: nil)
    category.valid?
    expect(category.errors[:name]).to include("can't be blank")
  end

  it 'is invalid with non letters characters' do
    category = FactoryBot.build(:category, name: "D3s53rt")
    category.valid?
    expect(category.errors[:name]).to include("only allows letters")
  end

  it 'is invalid with a duplicate name' do
    category1 = FactoryBot.create(:category, name: "Meat")
    category2 = FactoryBot.build(:category, name: "Meat")
    category2.valid?
    expect(category2.errors[:name]).to include("has already been taken")
  end
end