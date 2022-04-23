require 'rails_helper'

RSpec.describe Order, type: :model do
  it 'is invalid without customer id' do
    order = FactoryBot.build(:order, customer_id: nil)
    order.valid?
    expect(order.errors[:customer_id]).to include("can't be blank")
  end

  it 'is invalid without a status' do
    order = FactoryBot.build(:order, status: nil)
    order.valid?
    expect(order.errors[:status]).to include("can't be blank")
  end

  it 'is invalid with invalid status' do
    order = FactoryBot.build(:order, status: "PENDING")
    order.valid?
    expect(order.errors[:status]).to include("is not a valid status")
  end
end