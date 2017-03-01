Rails.application.routes.draw do
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  root to: 'feedbacks#index'
  resources :feedbacks, only: [:index, :show, :new, :create]
  resources :questions, only: [] do
    collection do
      get :insert
    end
  end
end
