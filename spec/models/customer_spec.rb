require 'rails_helper'

RSpec.describe Customer, type: :model do
  it 'is valid build customer' do
    expect(FactoryBot.build(:customer)).to be_valid
  end

  it 'is invalid without a name' do
    customer = FactoryBot.build(:customer, email: nil)
    customer.valid?
    expect(customer.errors[:email]).to include("can't be blank")
  end

  it 'is invalid email format' do
    customer = FactoryBot.build(:customer, email: "user@gmail")
    customer.valid?
    expect(customer.errors[:email]).to include("is invalid")
  end

  it 'is invalid with a duplicate name' do
    customer1 = FactoryBot.create(:customer, email: "user@gmail.com")
    customer2 = FactoryBot.build(:customer, email: "user@gmail.com")
    customer2.valid?
    expect(customer2.errors[:email]).to include("has already been taken")
  end
end