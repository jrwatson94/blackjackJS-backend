Rails.application.routes.draw do
  resources :hands
  resources :users

  get '/users/:id/hands', to: 'users#user_hands'
  delete '/users/:id/hands', to: 'users#destroy_user_hands'
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
