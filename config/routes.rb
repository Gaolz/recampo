Rails.application.routes.draw do
  root 'topics#index'
  get 'signup', to: 'users#new', as: 'signup'
  resources :users, only: [:create] do
    collection do
      get :check_email
      get :check_username
    end
  end
end
