Rails.application.routes.draw do
  ActiveAdmin.routes(self)
  root to: 'static#index'
  scope 'api', defaults: { format: :json } do
    get '/auth/:provider/callback' => 'sessions#create'
    if Rails.env.development?
      post '/auth/:provider/callback' => 'sessions#create'
    end
    get '/sign_out' => 'sessions#destroy', as: :signout
    get '/current_user' => 'sessions#show'

    scope 'datatables' do
      get 'variants' => 'variants#datatable'
      get 'genes' => 'genes#datatable'
      get 'variant_groups' => 'variant_groups#datatable'
      get 'sources' => 'sources#datatable'
      get 'source_suggestions' => 'sources#suggestions_datatable'
    end
    get '/variants/typeahead_results' => 'variants#typeahead_results'

    get '/events' => 'events#index'

    get '/text/:term' => 'text#show'
    get '/text' => 'text#index'

    scope 'ccc' do
      get 'genes/:entrez_id/variants' => 'variants#entrez_gene_index'
      get 'genes/:entrez_id' =>  'genes#entrez_show'
      get 'entrez_ids' => 'genes#entrez_index'
    end

    scope 'typeahead_searches' do
      get 'variants' => 'typeahead_searches#variants'
    end

    scope 'stats' do
      get 'site' => 'stats#site_overview'
      get 'dashboard' => 'stats#dashboard'
    end

    concern :audited do |options|
      get 'revisions/last' => "#{options[:controller]}#last"
      resources :revisions, { only: [:index, :show] }.merge(options)
    end

    concern :commentable do |options|
      resources :comments, { only: [:index, :show, :create, :update, :destroy] }.merge(options)
    end

    concern :moderated do |options|
      get 'fields_with_pending_changes' => "#{options[:controller]}#fields_with_pending_changes"
      post 'suggested_changes/:id/accept' => "#{options[:controller]}#accept"
      post 'suggested_changes/:id/reject' => "#{options[:controller]}#reject"
      resources :suggested_changes, { only: [:index, :show, :create, :update] }.merge(options) do
        concerns :commentable, controller: 'moderation_comments'
      end
    end

    concern :advanced_search do |options|
      post '/search' => "advanced_search#create", on: :collection
      get '/search/:token' => "advanced_search#show", on: :collection
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
      get 'variant_statuses' => 'variants#gene_statuses_index'
      get 'variant_groups' => 'variant_groups#gene_index'
      concerns :audited, controller: 'gene_audits'
      concerns :moderated, controller: 'gene_moderations'
      concerns :commentable, controller: 'gene_comments'
      concerns :advanced_search
    end

    resources 'variants', except: [:edit] do
      get 'myvariant_info_proxy' => 'variants#myvariant_info_proxy'
      get 'evidence_items' => 'evidence_items#variant_index'
      get 'variant_groups' => 'variant_groups#variant_index'
      concerns :audited, controller: 'variant_audits'
      concerns :moderated, controller: 'variant_moderations'
      concerns :commentable, controller: 'variant_comments'
      concerns :advanced_search
    end

    resources 'evidence_items', except: [:new, :create, :edit] do
      concerns :audited, controller: 'evidence_item_audits'
      concerns :moderated, controller: 'evidence_item_moderations'
      concerns :commentable, controller: 'evidence_item_comments'
      concerns :advanced_search
      post 'accept' => 'evidence_items#accept'
      post 'reject' => 'evidence_items#reject'
    end

    scope 'releases' do
      get '/' => 'tsv_releases#index'
      get 'nightly' => 'tsv_releases#nightly'
    end

    scope 'current_user' do
      get 'events' => 'users#events'
      get 'stats' => 'stats#current_user_stats'
      get 'feed' => 'notifications#index'
      patch 'feed' => 'notifications#update'
      get 'subscriptions' => 'subscriptions#current_user'
    end
    delete 'current_user' => 'users#destroy'
    patch 'current_user' => 'users#update'

    resources 'users', except: [:new, :create] do
      get 'stats' => 'stats#user_stats'
      get 'events' => 'users#events'
      get 'suggestions' => 'users#username_suggestions', on: :collection
      get 'username_status' => 'users#username_status', on: :collection
    end

    resources 'sources', only: [:index, :show, :create, :update] do
      get '/existence/:pubmed_id' => 'sources#existence', on: :collection
      concerns :commentable, controller: 'source_comments'
      concerns :advanced_search
    end

    get '/community/leaderboards' => 'community#leaderboards'

    post '/evidence_items' => 'evidence_items#propose'
    post '/markdown' => 'markdown#preview'
    get '/diseases' => 'diseases#index'
    get '/diseases/existence/:doid' => 'diseases#existence'
    get '/genes/existence/:entrez_id' => 'genes#existence'
    get '/drugs' => 'drugs#index'
    get '/drugs/existence/:pubchem_id' => 'drugs#existence'
    get '/drugs/suggestions' => 'drugs#name_suggestion'

    get '/variant_types' => 'variant_types#index'
    get 'variant_types/relationships' => 'variant_types#relationships'

    get '/entity_suggestions' => 'entity_suggestions#index'

    scope 'docm' do
      get '/variants' => 'docm#variant_index'
    end

    get '/server' => 'server#show'

    patch '/source_suggestions/:id' => 'sources#update_source_suggestion'

    scope 'ga4gh' do
      post '/phenotypes/search' => 'ga4gh#phenotype_search'
      post '/genotypes/search' => 'ga4gh#genotype_search'
      post '/featurephenotypeassociations/search' => 'ga4gh#feature_phenotype_associations_search'
    end

    get '/badges/redeem/:claim_id' => 'badge_claim#redeem'
    get '/badges' => 'badge_claim#index'

    resources 'organizations', only: [:index, :show]

    resources 'subscriptions', except: [:update] do
      delete  '/' => 'subscriptions#destroy', on: :collection
    end

    resources 'domain_experts', except: [:update] do
      delete  '/' => 'domain_experts#destroy', on: :collection
    end
  end


  get '/links' => 'links#redirect'
  get 'links/:idtype/:id' => 'links#redirect'
end
