Rails.application.routes.draw do
  mount ActionCable.server => '/cable'
  mount RailsAdmin::Engine => '/admin', as: 'rails_admin'
  devise_for :users, controllers: { omniauth_callbacks: 'users/omniauth_callbacks' }

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  root 'questions#index'
  resources :users, only: [:show]
  get '/about'=> 'questions#about'

  resources :questions do
      resource :question_comments, only: [:create, :destroy]
      resource :question_score, only: [:create, :destroy]
    resources :answers, only: [:create, :destroy, :update] do
        member do
          patch '/BestAnswer' => 'answers#bestanswer'
          post '/up' => 'answer_scores#up'
          post '/down' => 'answer_scores#down'
        end
      resource :comments, only: [:create, :destroy]
    end
  end


    resources :examples do
      resource :example_scores, only: [:create, :destroy]
    end
end
