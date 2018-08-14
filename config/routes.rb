Rails.application.routes.draw do
  resources :admissions
  resources :careers
  resources :headquarters
  resources :scholarships
  resources :institutions
  resources :courses
  resources :questions
  resources :answers
  resources :users
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
