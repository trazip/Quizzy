Rails.application.routes.draw do
  devise_for :users
  root to: 'quizzes#index'

  resources :quizzes do
    resources :questions, only: [:new, :create]
  end

  resources :questions, only: [:edit, :update, :destroy]
end
