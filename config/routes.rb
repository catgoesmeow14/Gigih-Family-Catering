Rails.application.routes.draw do
  get 'pages/index'
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  # root "articles#index"

  namespace :api do
    namespace :v1 do
      resources :menus
      resources :categories
      resources :category_details
      resources :customers
      resources :orders
      post '/reports/daily', to: 'reports#daily_report'
      post '/reports/customer', to: 'reports#customer_report'
    end
  end

  get '*path', to: 'pages#index', via: :all
end
