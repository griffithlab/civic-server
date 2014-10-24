Rails.application.routes.draw do
  root to: 'static#index'
  get '/auth/:provider/callback' => 'sessions#create'
  get '/sign_out' => 'sessions#destroy', as: :signout
  get '/current_user' => 'sessions#show'

  get '/variants' => 'variants#index'
  get '/variants/typeahead_results' => 'variants#typeahead_results', defaults: { format: :json }

  concern :audited do |options|
    get 'revisions/last' => "#{options[:controller]}#last"
    resources :revisions, { only: [:index, :show] }.merge(options)
  end

  resources 'genes', except: [:edit, :new], defaults: { format: :json } do
    concerns :audited, controller: 'gene_audits'
  end
end
