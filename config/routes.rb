Rails.application.routes.draw do
  resources :users
  namespace :api do
    namespace :v1 do
      resources :users
    end
  end
  get 'welcome/index'
  root 'welcome#index'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
