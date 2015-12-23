module Actions
  class UpdateEvidenceItemStatus
    include Actions::Transactional
    attr_reader :evidence_item, :originating_user, :new_status

    def initialize(evidence_item, originating_user, new_status)
      @evidence_item = evidence_item
      @originating_user = originating_user
      @new_status = new_status
    end

    private
    def perform
      evidence_item.lock!
      if evidence_item.status != new_status
        evidence_item.status = new_status
        evidence_item.save!
        Event.create(
          action: new_status,
          originating_user: originating_user,
          subject: evidence_item
        )
        evidence_item.subscribe_user(originating_user)
      else
        errors << "Attempted to update to status #{new_status} but it was already completed"
      end
    end
  end
end
