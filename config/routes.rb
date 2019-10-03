Rails.application.routes.draw do
  get 'questions/new'
  get 'questions/index'
  get 'questions/sbow'
  get 'questions/create'
  get 'questions/update'
  get 'questions/edit'
  mount RailsAdmin::Engine => '/admin', as: 'rails_admin'
  devise_for :users
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html

  resources :users, only: [:show]
  resources :questions
end
