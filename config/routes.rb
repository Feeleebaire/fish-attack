Rails.application.routes.draw do
  mount ForestLiana::Engine => '/forest'
  devise_for :users
  root to: 'pages#home'
  resources :spots
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
