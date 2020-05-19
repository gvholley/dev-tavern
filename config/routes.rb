Rails.application.routes.draw do
  devise_for :users
  root to: 'pages#home'
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
  resources :users, only: [:show]
  resources :projects, only: [:new, :create, :show]
  resources :matches, only: [:create]
  get '/tagged', to: "projects#tagged", as: :tagged
end
