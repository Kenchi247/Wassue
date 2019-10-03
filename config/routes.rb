Rails.application.routes.draw do
  mount RailsAdmin::Engine => '/admin', as: 'rails_admin'
  devise_for :users
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html

  resources :users, only: [:show]

  resources :questions do
      resource :question_score, only: [:create, :destroy]
    resources :answer, only: [:create, :destroy] do
      resource :answer_scores, only: [:create, :destroy]
      resource :comments, only: [:create, :destroy]
    end
  end

    resources :examples do
      resource :example_scores, only: [:create, :destroy]
    end
end
