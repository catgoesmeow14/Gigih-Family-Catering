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
    end
  end

  get '*path', to: 'pages#index', via: :all
end
