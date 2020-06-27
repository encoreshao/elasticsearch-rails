Rails.application.routes.draw do
  get '/search', to: 'search#index', as: 'search'

  resources :authorships
  resources :authors
  resources :categories
  resources :comments
  resources :articles do
    collection { get :search }
  end

  root to: 'search#index'
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
