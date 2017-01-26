module Badges
  class Rules
    include Badges::RuleSupport

    def initialize
      super
      #Define your rules here

      # comment rules
      grant 'Commentor', tier: 'bronze', on: ['gene_comments#create', 'variant_comments#create', 'evidence_item_comments#create'] do |user, params|
        @message = 'Made your first CIViC comment'
        user.comments.count >= 1
      end
      grant 'Commentor', tier: 'silver', on: ['gene_comments#create', 'variant_comments#create', 'evidence_item_comments#create'] do |user, params|
        user.comments.count >= 100
      end
      grant 'Commentor', tier: 'gold', on: ['gene_comments#create', 'variant_comments#create', 'evidence_item_comments#create'] do |user, params|
        user.comments.count >= 1000
      end

      # evidence item rules
      grant 'Contributor', tier: 'bronze', on: 'evidence_items#accept' do |user, params|
        submitter = EvidenceItem.find(params[:id]).submitter
        count = EvidenceItem.where(status: 'accepted', submitter: submitter).count
        @target_user = submitter
        @message = 'Had your first evidence item accepted into CIViC'
        count >= 1
      end
    end
  end
end
