Rails.application.routes.draw do
  root 'static_pages#home'
  get '/auth/:provider/callback' => 'sessions#create'
  get '/logout', to: 'sessions#destroy', as: :logout

  resources :users
end
