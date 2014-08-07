Rails.application.routes.draw do
  root to: 'static#index'
  get '/auth/:provider/callback' => 'sessions#create'
  get '/sign_out' => 'sessions#destroy', as: :signout
  get '/current_user' => 'sessions#show'
  get '/test_unprotected' => 'static#test_unprotected'
end
