require 'rails_helper'

RSpec.describe "Categories", type: :request do
  describe "GET /index" do
    scenario "returns http success" do
      get '/api/v1/categories'

      expect(response).to have_http_status(:success)
    end
  end

  describe 'POST /categories' do

    scenario 'valid categories attributes' do
      post '/api/v1/categories', params: {
        category: {
          category_name: "Dessert"
        }
      }
      expect(response.status).to eq(200)

    end
  
    scenario 'invalid categories attributes' do
      post '/api/v1/categories', params: {
        category: {
          category_name: ''
        }
      }

      expect(response.status).to eq(422)
    end
  end

  describe 'PUT /categories' do
    let!(:category) { FactoryBot.build(:category)}

    scenario 'valid categories edit attributes' do
      post "/api/v1/categories/#{category.id}", params: {
        category: {
          category_name: "Dessert"
        }
      }
      expect(response.status).to eq(200)

    end
  
    scenario 'invalid categories attributes' do
      post "/api/v1/categories/#{category.id}", params: {
        category: {
          category_name: ''
        }
      }

      expect(response.status).to eq(422)
    end
  end
end