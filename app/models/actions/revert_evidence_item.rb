module Actions
  class RevertEvidenceItem
    include Actions::Transactional
    include Actions::WithEvent
    attr_reader :evidence_item, :subject, :originating_user, :organization

    def initialize(evidence_item, originating_user, organization)
      @evidence_item = evidence_item
      @subject = evidence_item
      @originating_user = originating_user
      @organization = organization
    end

    private
    def execute
      evidence_item.lock!
      if evidence_item.status != 'submitted'
        update_source_status
        update_variant_score
        evidence_item.status = 'submitted'
        evidence_item.save!
        create_event('reverted')
        evidence_item.subscribe_user(originating_user)
      else
        errors << "Attempted to revert evidence item to submitted, but it already is."
      end
    end

    def update_variant_score
      UpdateVariantScore.perform_later(evidence_item.variant)
    end

    def state_params
      evidence_item.state_params
    end
  end
end
