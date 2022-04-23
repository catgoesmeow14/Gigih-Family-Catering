require 'rails_helper'

RSpec.describe CategoryDetail, type: :model do
  it 'is invalid without menu id' do
    category_detail = FactoryBot.build(:category_detail, menu_id: nil)
    category_detail.valid?
    expect(category_detail.errors[:menu_id]).to include("can't be blank")
  end
  
  it 'is invalid without category id' do
    category_detail = FactoryBot.build(:category_detail, category_id: nil)
    category_detail.valid?
    expect(category_detail.errors[:category_id]).to include("can't be blank")
  end
end