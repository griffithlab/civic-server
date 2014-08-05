Rails.application.routes.draw do
  root to: 'static#index'
  get '/auth/:provider/callback' => 'sessions#create'
  get '/sign_out' => 'sessions#destroy', as: :signout
end
