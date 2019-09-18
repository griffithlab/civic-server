module Badges
  class Rules
    include Badges::RuleSupport

    def initialize
      super
      #Define your rules here

      # comment rules
      comment_actions = [
        'gene_comments#create',
        'variant_comments#create',
        'evidence_item_comments#create',
        'variant_group_comments#create',
        'source_comments#create',
        'moderation_comments#create',
        'assertion_comments#create',
      ]
      grant 'Commentor', tier: 'bronze', on: comment_actions  do |user, params|
        @message = 'Awarded for making your first CIViC comment.'
        Event.where(action: 'commented', originating_user: user).count >= 1
      end
      grant 'Commentor', tier: 'silver', on: comment_actions do |user, params|
        @message = 'Awarded for making 25 CIViC comments.'
        Event.where(action: 'commented', originating_user: user).count >= 25
      end
      grant 'Commentor', tier: 'gold', on: comment_actions  do |user, params|
        @message = 'Awarded for making 200 CIViC comments.'
        Event.where(action: 'commented', originating_user: user).count >= 200
      end
      grant 'Commentor', tier: 'platinum', on: comment_actions do |user, params|
        @message = 'Awarded for making 500 CIViC comments.'
        Event.where(action: 'commented', originating_user: user).count >= 500
      end

      #evidence items
      grant 'Submittor', tier: 'bronze', on: 'evidence_items#accept' do |user, params|
        submitter = EvidenceItem.find(params[:evidence_item_id]).submitter
        count = EvidenceItem.joins(submission_event: [:originating_user])
          .where(status: 'accepted', events: {originating_user: submitter})
          .count
        @target_user = submitter
        @message = 'Awarded for having your first Evidence Item accepted.'
        count >= 1
      end
      grant 'Submittor', tier: 'silver', on: 'evidence_items#accept' do |user, params|
        submitter = EvidenceItem.find(params[:evidence_item_id]).submitter
        count = EvidenceItem.joins(submission_event: [:originating_user])
          .where(status: 'accepted', events: {originating_user: submitter})
          .count
        @target_user = submitter
        @message = 'Awarded for having five Evidence Items accepted.'
        count >= 5
      end
      grant 'Submittor', tier: 'gold', on: 'evidence_items#accept' do |user, params|
        submitter = EvidenceItem.find(params[:evidence_item_id]).submitter
        count = EvidenceItem.joins(submission_event: [:originating_user])
          .where(status: 'accepted', events: {originating_user: submitter})
          .count
        @target_user = submitter
        @message = 'Awarded for having fifty Evidence Items accepted.'
        count >= 50
      end
      grant 'Submittor', tier: 'platinum', on: 'evidence_items#accept' do |user, params|
        submitter = EvidenceItem.find(params[:evidence_item_id]).submitter
        count = EvidenceItem.joins(submission_event: [:originating_user])
          .where(status: 'accepted', events: {originating_user: submitter})
          .count
        @target_user = submitter
        @message = 'Awarded for having 100 Evidence Items accepted.'
        count >= 100
      end

      #editing
      revision_actions = [
        'evidence_item_moderations_controller#create',
        'gene_moderations#create',
        'variant_group_moderations#create',
        'variant_moderations#create',
        'assertion_moderations#create',
      ]
      grant 'Revisor', tier: 'bronze', on: revision_actions  do |user, params|
        @message = 'Awarded for suggesting your first CIViC revision.'
        SuggestedChange.where(user: user).count >= 1
      end
      grant 'Revisor', tier: 'silver', on: revision_actions do |user, params|
        @message = 'Awarded for suggesting ten CIViC revisions.'
        SuggestedChange.where(user: user).count >= 10
      end
      grant 'Revisor', tier: 'gold', on: revision_actions do |user, params|
        @message = 'Awarded for suggesting 25 CIViC revisions.'
        SuggestedChange.where(user: user).count >= 25
      end
      grant 'Revisor', tier: 'platinum', on: revision_actions do |user, params|
        @message = 'Awarded for suggesting 100 CIViC revisions.'
        SuggestedChange.where(user: user).count >= 100
      end

      #moderation
      moderation_actions = [
        'evidence_item_moderations_controller#accept',
        'gene_moderations#accept',
        'variant_group_moderations#accept',
        'variant_moderations#accept',
        'assertion_moderations#accept',
        'evidence_item_moderations_controller#reject',
        'gene_moderations#reject',
        'variant_group_moderations#reject',
        'variant_moderations#reject',
        'assertion_moderations#reject',
      ]
      grant 'Moderator', tier: 'bronze', on: moderation_actions  do |user, params|
        @message = 'Awarded for moderating your first CIViC revision.'
        Event.where(action: ['change accepted', 'change rejected'], originating_user: user).count >= 1
      end
      grant 'Moderator', tier: 'silver', on: moderation_actions do |user, params|
        @message = 'Awarded for moderating ten CIViC revisions.'
        Event.where(action: ['change accepted', 'change rejected'], originating_user: user).count >= 10
      end
      grant 'Moderator', tier: 'gold', on: moderation_actions do |user, params|
        @message = 'Awarded for moderating 25 CIViC revisions.'
        Event.where(action: ['change accepted', 'change rejected'], originating_user: user).count >= 25
      end
      grant 'Moderator', tier: 'platinum', on: moderation_actions do |user, params|
        @message = 'Awarded for moderating 100 CIViC revisions.'
        Event.where(action: ['change accepted', 'change rejected'], originating_user: user).count >= 100
      end

      #source suggestions
      grant 'Suggestor', tier: 'bronze', on: ['sources#create'] do |user, params|
        @message = 'Awarded for suggesting your first publication to the CIViC community.'
        Event.where(action: 'publication suggested', originating_user: user).count >= 1
      end
      grant 'Suggestor', tier: 'silver', on: ['sources#create'] do |user, params|
        @message = 'Awarded for suggesting ten publications to the CIViC community.'
        Event.where(action: 'publication suggested', originating_user: user).count >= 10
      end
      grant 'Suggestor', tier: 'gold', on: ['sources#create'] do |user, params|
        @message = 'Awarded for suggesting 25 publications to the CIViC community.'
        Event.where(action: 'publication suggested', originating_user: user).count >= 25
      end
      grant 'Suggestor', tier: 'platinum', on: ['sources#create'] do |user, params|
        @message = 'Awarded for suggesting 100 publications to the CIViC community.'
        Event.where(action: 'publication suggested', originating_user: user).count >= 100
      end

      #specialization
      grant 'Disease Specialist', tier: 'bronze', on: ['evidence_items#accept'] do |user, params|
        @message = 'Awarded for submitting five Evidence Items related to a single disease.'
        submitter = EvidenceItem.find(params[:evidence_item_id]).submitter
        @target_user = submitter
        EvidenceItem.eager_load(:disease, submission_event: [:originating_user] )
          .where(status: 'accepted', events: {originating_user: submitter})
          .group(:disease).count.values.any? { |x| x >= 5 }
      end
      grant 'Disease Specialist', tier: 'silver', on: ['evidence_items#accept'] do |user, params|
        @message = 'Awarded for submitting 25 Evidence Items related to a single disease.'
        submitter = EvidenceItem.find(params[:evidence_item_id]).submitter
        @target_user = submitter
        EvidenceItem.eager_load(:disease, submission_event: [:originating_user] )
          .where(status: 'accepted', events: {originating_user: submitter})
          .group(:disease).count.values.any? { |x| x >= 25 }
      end
      grant 'Disease Specialist', tier: 'gold', on: ['evidence_items#accept'] do |user, params|
        @message = 'Awarded for submitting 50 Evidence Items related to a single disease.'
        submitter = EvidenceItem.find(params[:evidence_item_id]).submitter
        @target_user = submitter
        EvidenceItem.eager_load(:disease, submission_event: [:originating_user] )
          .where(status: 'accepted', events: {originating_user: submitter})
          .group(:disease).count.values.any? { |x| x >= 50 }
      end
      grant 'Disease Specialist', tier: 'platinum', on: ['evidence_items#accept'] do |user, params|
        @message = 'Awarded for submitting 100 Evidence Items related to a single disease.'
        submitter = EvidenceItem.find(params[:evidence_item_id]).submitter
        @target_user = submitter
        EvidenceItem.eager_load(:disease, submission_event: [:originating_user] )
          .where(status: 'accepted', events: {originating_user: submitter})
          .group(:disease).count.values.any? { |x| x >= 100 }
      end

      grant 'Gene Specialist', tier: 'bronze', on: ['evidence_items#accept'] do |user, params|
        @message = 'Awarded for submitting five Evidence Items related to a single gene.'
        submitter = EvidenceItem.find(params[:evidence_item_id]).submitter
        @target_user = submitter
        EvidenceItem.eager_load(variant: [:gene], submission_event: [:originating_user] )
          .where(status: 'accepted', events: {originating_user: submitter})
          .group('genes.id').count
          .values.any? { |x| x >= 5 }
      end
      grant 'Gene Specialist', tier: 'silver', on: ['evidence_items#accept'] do |user, params|
        @message = 'Awarded for submitting 10 Evidence Items related to a single gene.'
        submitter = EvidenceItem.find(params[:evidence_item_id]).submitter
        @target_user = submitter
        EvidenceItem.eager_load(variant: [:gene], submission_event: [:originating_user] )
          .where(status: 'accepted', events: {originating_user: submitter})
          .group('genes.id').count
          .values.any? { |x| x >= 10}
      end
      grant 'Gene Specialist', tier: 'gold', on: ['evidence_items#accept'] do |user, params|
        @message = 'Awarded for submitting 25 Evidence Items related to a single gene.'
        submitter = EvidenceItem.find(params[:evidence_item_id]).submitter
        @target_user = submitter
        EvidenceItem.eager_load(variant: [:gene], submission_event: [:originating_user] )
          .where(status: 'accepted', events: {originating_user: submitter})
          .group('genes.id').count
          .values.any? { |x| x >= 25}
      end
      grant 'Gene Specialist', tier: 'platinum', on: ['evidence_items#accept'] do |user, params|
        @message = 'Awarded for submitting 50 Evidence Items related to a single gene.'
        submitter = EvidenceItem.find(params[:evidence_item_id]).submitter
        @target_user = submitter
        EvidenceItem.eager_load(variant: [:gene], submission_event: [:originating_user] )
          .where(status: 'accepted', events: {originating_user: submitter})
          .group('genes.id').count
          .values.any? { |x| x >= 50}
      end

      #misc
      grant 'Biographer', tier: 'bronze', on: 'users#update' do |user, params|
        user.bio.present? && user.bio.size >= 10
      end
    end
  end
end
