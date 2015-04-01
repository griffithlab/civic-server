Rails.application.routes.draw do
  ActiveAdmin.routes(self)
  root to: 'static#index'
  scope 'api' do
    get '/stats/site_overview' => 'stats#site_overview'
    get '/auth/:provider/callback' => 'sessions#create'
    get '/sign_out' => 'sessions#destroy', as: :signout
    get '/current_user' => 'sessions#show'

    get '/datatables/variants' => 'variants#datatable'
    get '/datatables/genes' => 'genes#datatable'
    get '/variants/typeahead_results' => 'variants#typeahead_results', defaults: { format: :json }

    get '/genes/mygene_info_proxy/:entrez_id' => 'genes#mygene_info_proxy'

    get '/text/:term' => 'text#show'
    get '/text' => 'text#index'

    concern :audited do |options|
      get 'revisions/last' => "#{options[:controller]}#last"
      resources :revisions, { only: [:index, :show] }.merge(options)
    end

    concern :commentable do |options|
      resources :comments, { only: [:index, :show, :create, :update, :destroy] }.merge(options)
    end

    concern :moderated do |options|
      post 'suggested_changes/:id/accept' => "#{options[:controller]}#accept"
      post 'suggested_changes/:id/reject' => "#{options[:controller]}#reject"
      resources :suggested_changes, { only: [:index, :show, :create, :update] }.merge(options) do
        concerns :commentable, controller: 'moderation_comments'
      end
    end

    resources 'variant_groups', only: [:index, :show]

    resources 'genes', except: [:edit, :new], defaults: { format: :json } do
      get 'variants' => 'variants#index'
      concerns :audited, controller: 'gene_audits'
      concerns :moderated, controller: 'gene_moderations'
      concerns :commentable, controller: 'gene_comments'
    end

    resources 'variants' do
      get 'evidence_items' => 'evidence_items#index'
      concerns :audited, controller: 'variant_audits'
      concerns :moderated, controller: 'variant_moderations'
      concerns :commentable, controller: 'variant_comments'
    end

    resources 'evidence_items', except: [:new, :create] do
      concerns :audited, controller: 'evidence_item_audits'
      concerns :moderated, controller: 'evidence_item_moderations'
      concerns :commentable, controller: 'evidence_item_comments'
    end

    post '/evidence_items' => 'evidence_items#propose'
    get '/sources/existence/:pubmed_id' => 'sources#existence'
  end
end
