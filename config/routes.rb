Rails.application.routes.draw do
  ActiveAdmin.routes(self)
  root to: 'static#index'
  scope 'api', defaults: { format: :json } do
    get '/auth/:provider/callback' => 'sessions#create'
    get '/sign_out' => 'sessions#destroy', as: :signout
    get '/current_user' => 'sessions#show'

    get '/datatables/variants' => 'variants#datatable'
    get '/datatables/genes' => 'genes#datatable'
    get '/variants/typeahead_results' => 'variants#typeahead_results'

    get '/events' => 'events#index'

    get '/text/:term' => 'text#show'
    get '/text' => 'text#index'

    scope 'ccc' do
      get 'genes/:entrez_id/variants' =>  'variants#entrez_gene_index'
      get 'genes/:entrez_id' =>  'genes#entrez_show'
      get 'entrez_ids' =>  'genes#entrez_index'
      get 'variant_hgvs' =>  'evidence_items#variant_hgvs_index'
    end

    scope 'stats' do
      get 'site' => 'stats#site_overview'
      get 'evidence_items' => 'stats#evidence_item_stats'
    end

    concern :subscribable do |options|
      get 'events' => "#{options[:controller]}#events"
      post 'subscriptions' => "#{options[:controller]}#create"
      delete 'subscriptions' => "#{options[:controller]}#destroy"
      get 'subscriptions' => "#{options[:controller]}#index"
    end

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

    resources 'variant_groups', except: [:edit] do
      get 'variants' => 'variants#variant_group_index'
      concerns :audited, controller: 'variant_group_audits'
      concerns :moderated, controller: 'variant_group_moderations'
      concerns :commentable, controller: 'variant_group_comments'
    end

    resources 'genes', except: [:edit, :new] do
      get 'mygene_info_proxy' => 'genes#mygene_info_proxy'
      get 'variants' => 'variants#gene_index'
      get 'variant_groups' => 'variant_groups#gene_index'
      concerns :audited, controller: 'gene_audits'
      concerns :moderated, controller: 'gene_moderations'
      concerns :commentable, controller: 'gene_comments'
      concerns :subscribable, controller: 'gene_subscriptions'
    end

    resources 'variants', except: [:edit] do
      get 'evidence_items' => 'evidence_items#variant_index'
      get 'variant_groups' => 'variant_groups#variant_index'
      concerns :audited, controller: 'variant_audits'
      concerns :moderated, controller: 'variant_moderations'
      concerns :commentable, controller: 'variant_comments'
      concerns :subscribable, controller: 'variant_subscriptions'
    end

    resources 'evidence_items', except: [:new, :create, :edit] do
      concerns :audited, controller: 'evidence_item_audits'
      concerns :moderated, controller: 'evidence_item_moderations'
      concerns :commentable, controller: 'evidence_item_comments'
      concerns :subscribable, controller: 'evidence_item_subscriptions'
      post 'accept' => 'evidence_items#accept'
      post 'reject' => 'evidence_items#reject'
    end

    scope 'releases' do
      get '/' => 'tsv_releases#index'
      get 'nightly' => 'tsv_releases#nightly'
    end

    get 'current_user/events' => 'users#events'
    get 'current_user/stats' => 'stats#current_user_stats'
    delete 'current_user' => 'users#destroy'
    patch 'current_user' => 'users#update'

    resources 'users', except: [:new, :create, :index] do
      get 'stats' => 'stats#user_stats'
      get 'events' =>  'users#events'
    end

    post '/evidence_items' => 'evidence_items#propose'
    post '/evidence_items/search' => 'evidence_items#advanced_search'
    get '/sources' => 'sources#index'
    get '/sources/existence/:pubmed_id' => 'sources#existence'
    get '/diseases' => 'diseases#index'
    get '/diseases/existence/:doid' => 'diseases#existence'
    get '/genes/existence/:entrez_id' => 'genes#existence'
    get '/drugs' => 'drugs#index'
    get '/drugs/existence/:pubchem_id' => 'drugs#existence'
  end
end
