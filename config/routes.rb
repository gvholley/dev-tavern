Rails.application.routes.draw do
  devise_for :users
  root to: 'pages#home'
  get '/tagged', to: "pages#tagged", as: :tagged
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
  resources :users, only: [:show, :index]
  resources :projects, only: [:new, :create, :show, :index]
  resources :matches, only: [:create, :update]
end
