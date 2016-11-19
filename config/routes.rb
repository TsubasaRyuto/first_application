Rails.application.routes.draw do
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  namespace :api, {format: 'json'} do
    resources :users, except: [:index, :new, :edit, :show]
    post '/login', to: 'sessions#login'
    delete '/logout', to: 'sessions#destroy'
  end
end
