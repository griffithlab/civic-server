Rails.application.routes.draw do
  root to: 'static#index'
  get '/auth/:provider/callback' => 'sessions#create'
  get '/sign_out' => 'sessions#destroy', as: :signout
  get '/current_user' => 'sessions#show'

  get '/variants' => 'variants#datatable'
  get '/variants/typeahead_results' => 'variants#typeahead_results', defaults: { format: :json }

  get '/genes/pathways' => 'pathways#index'
  get '/genes/categories' => 'categories#index'
  get '/genes/protein_motifs' => 'protein_motifs#index'
  get '/genes/protein_functions' => 'protein_functions#index'

  get '/mock_normal_user' => 'sessions#mock_normal'
  get '/mock_admin_user' => 'sessions#mock_admin'

  concern :audited do |options|
    get 'revisions/last' => "#{options[:controller]}#last"
    resources :revisions, { only: [:index, :show] }.merge(options)
  end

  concern :moderated do |options|
    post 'suggested_changes/:id/accept' => "#{options[:controller]}#accept"
    resources :suggested_changes, { only: [:index, :show, :create, :update] }.merge(options)
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
