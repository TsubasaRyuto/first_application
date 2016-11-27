Rails.application.routes.draw do
  root 'static_pages#home'
  get '/auth/:provider/callback' => 'sessions#create'
  delete 'logout' => 'sessions#destroy'
  delete 'logout' => 'sessions#destroy'
  resources :users, only: [:index, :show, :edit, :update, :delete]
end
