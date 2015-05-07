Rails.application.routes.draw do
  ActiveAdmin.routes(self)
  root to: 'static#index'
  scope 'api', defaults: { format: :json } do
    get '/stats/site_overview' => 'stats#site_overview'
    get '/auth/:provider/callback' => 'sessions#create'
    get '/sign_out' => 'sessions#destroy', as: :signout
    get '/current_user' => 'sessions#show'

    get '/datatables/variants' => 'variants#datatable'
    get '/datatables/genes' => 'genes#datatable'
    get '/variants/typeahead_results' => 'variants#typeahead_results'

    get '/genes/:id/mygene_info_proxy' => 'genes#mygene_info_proxy'

    get '/text/:term' => 'text#show'
    get '/text' => 'text#index'
    
    get '/ccc/genes/:gene_entrez_id/variants' =>  'variants#entrez_gene_index'
    get '/ccc/genes/:entrez_id' =>  'genes#entrez_show'


    scope 'stats' do
      get 'current_user' => 'stats#current_user_stats'
      get 'site' => 'stats#site_overview'
      get 'evidence_items' => 'stats#evidence_item_stats'
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

    resources 'variant_groups', except: [:edit, :new] do
      get 'variants' => 'variants#variant_group_index'
      concerns :audited, controller: 'variant_group_audits'
      concerns :moderated, controller: 'variant_group_moderations'
      concerns :commentable, controller: 'variant_group_comments'
    end

    resources 'genes', except: [:edit, :new] do
      get 'variants' => 'variants#gene_index'
      get 'variant_groups' => 'variant_groups#gene_index'
      concerns :audited, controller: 'gene_audits'
      concerns :moderated, controller: 'gene_moderations'
      concerns :commentable, controller: 'gene_comments'
    end

    resources 'variants' do
      get 'evidence_items' => 'evidence_items#variant_index'
      get 'variant_groups' => 'variant_groups#variant_index'
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
    get '/diseases' => 'diseases#index'
  end
end
