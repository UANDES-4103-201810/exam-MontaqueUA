Rails.application.routes.draw do
  resources :orders do
    resources :recipes
  end
  resources :recipes do
    resources :orders
  end
  devise_for :customers
  root :to => 'recipes#index'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
