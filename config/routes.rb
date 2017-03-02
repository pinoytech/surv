Rails.application.routes.draw do
  devise_for :admin_users
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  root to: 'feedbacks#index'
  resources :feedbacks, only: [:index, :show, :new, :create] do
    resources :responses, only: [:new, :create, :show]
  end
  resources :questions, only: [] do
    collection do
      get :insert
    end
  end
  resources :responses, only: [:new, :create, :show]
end
