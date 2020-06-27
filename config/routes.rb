Rails.application.routes.draw do
  get '/search', to: 'search#index', as: 'search'
  resources :authorships
  resources :authors
  resources :categories
  root to: 'search#index'
  resources :articles do
    collection { get :search }
  end

  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
