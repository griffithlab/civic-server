Rails.application.routes.draw do
  root to: 'static#index'
  get '/auth/:provider/callback' => 'sessions#create'
  get '/sign_out' => 'sessions#destroy', as: :signout
  get '/current_user' => 'sessions#show'

  get '/variants' => 'variants#datatable'
  get '/variants/typeahead_results' => 'variants#typeahead_results', defaults: { format: :json }

  concern :audited do |options|
    get 'revisions/last' => "#{options[:controller]}#last"
    resources :revisions, { only: [:index, :show] }.merge(options)
  end

  concern :moderated do |options|
    post 'suggested_changes/application' => "#{options[:controller]}#apply"
    resources :suggested_changes, options
  end

  resources 'genes', except: [:edit, :new], defaults: { format: :json } do
    concerns :audited, controller: 'gene_audits'
    concerns :moderated, controller: 'gene_moderations'
    resources 'variants' do
      concerns :audited, controller: 'variant_audits'
      concerns :moderated, controller: 'variant_moderations'
      resources 'evidence_items' do
        concerns :audited, controller: 'evidence_item_audits'
        concerns :moderated, controller: 'evidence_item_moderations'
      end
    end
  end
end
