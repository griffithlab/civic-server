class BackfillEvents
  def self.run
    ActiveRecord::Base.transaction do
      [EvidenceItem, Event, Gene, Variant].each do |klass|
        klass.record_timestamps = false
        klass.auditing_enabled = false
      end
      handle_evidence_items
      handle_variants
      handle_variant_groups
      handle_genes
    end
  end

  private
  def handle_evidence_items
    EvidenceItem.find_each do |evidence_item|
      if creation_audit = evidence_item.creation_audit
        if creator = creation_audit.user
          Event.create(
            action: 'submitted',
            originating_user: creator,
            subject: evidence_item,
            created_at: creation_audit.created_at,
            updated_at: creation_audit.created_at
          ) unless Event.where(action 'submitted', subject: evidence_item).any?
          if creation_audit.audited_changes["status"] == "accepted"
            Event.create(
              action: 'accepted',
              originating_user: creator,
              subject: evidence_item,
              created_at: creation_audit.created_at,
              updated_at: creation_audit.created_at
            ) unless Event.where(action: 'accepted', subject: evidence_item).any?
          end
        end
      end

      if approval_audit = evidence_item.audits.select { |e| e.audited_changes['status'] == ['submitted', 'accepted']}.first
            Event.create(
              action: 'accepted',
              originating_user: approval_audit.user,
              subject: evidence_item,
              created_at: approval_audit.created_at,
              updated_at: approval_audit.created_at
            ) unless Event.where(action: 'accepted', subject: evidence_item).any?
      end
    end
  end
end
