module Badges
  class Rules
    include Badges::RuleSupport

    def initialize
      super

      #Define your rules here

      # comment rules
      grant 'Bronze Commenter', on: ['gene_comments#create', 'variant_comments#create', 'evidence_comments#create'] do |user, params|
        user.comments.count >= 1
      end
      grant 'Silver Commenter', on: ['gene_comments#create', 'variant_comments#create', 'evidence_comments#create'] do |user, params|
        user.comments.count >= 10
      end
      grant 'Gold Commenter', on: ['gene_comments#create', 'variant_comments#create', 'evidence_comments#create'] do |user, params|
        user.comments.count >= 100
      end
      grant 'Platinum Commenter', on: ['gene_comments#create', 'variant_comments#create', 'evidence_comments#create'] do |user, params|
        user.comments.count >= 1000
      end
      # evidence item rules
      grant 'Bronze Contributor', on: 'evidence_items#accept' do |user, params|
        submitter = EvidenceItem.find(params[:id]).submitter
	count = EvidenceItem.where(status: 'accepted', submitter: submitter).count
        @target_user = submitter
        count >= 1
      end
      grant 'Silver Contributor', on: 'evidence_items#accept' do |user, params|
        submitter = EvidenceItem.find(params[:id]).submitter
        count = EvidenceItem.where(status: 'accepted', submitter: submitter).count
        @target_user = submitter
        count >= 10
      end
      grant 'Gold Contributor', on: 'evidence_items#accept' do |user, params|
        submitter = EvidenceItem.find(params[:id]).submitter
        count = EvidenceItem.where(status: 'accepted', submitter: submitter).count
        @target_user = submitter
        count >= 100
      end
      grant 'Platinum Contributor', on: 'evidence_items#accept' do |user, params|
        submitter = EvidenceItem.find(params[:id]).submitter
        count = EvidenceItem.where(status: 'accepted', submitter: submitter).count
        @target_user = submitter
        count >= 1000
      end
    end
  end
end
