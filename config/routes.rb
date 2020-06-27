Rails.application.routes.draw do
  resources :authorships
  resources :authors
  resources :categories
  root to: 'articles#index'
  resources :articles do
    collection { get :search }
  end

  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
