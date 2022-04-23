require 'rails_helper'

RSpec.describe OrderDetail, type: :model do
  it 'is invalid without order id' do
    order_detail = FactoryBot.build(:order_detail, order_id: nil)
    order_detail.valid?
    expect(order_detail.errors[:order_id]).to include("can't be blank")
  end
  
  it 'is invalid without item id' do
    order_detail = FactoryBot.build(:order_detail, menu_id: nil)
    order_detail.valid?
    expect(order_detail.errors[:menu_id]).to include("can't be blank")
  end
end