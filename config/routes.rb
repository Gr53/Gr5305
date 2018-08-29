Rails.application.routes.draw do
  resources :branches
  resources :institutions
  post 'user_token' => 'user_token#create'
  resources :users
  namespace :api do
    namespace :v1 do
      resources :users
      resources :institutions
      resources :branches
    end
  end
  get 'welcome/index'
  root 'welcome#index'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
