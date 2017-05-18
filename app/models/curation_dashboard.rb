class CurationDashboard
  def self.current_counts
    {
      new_source_suggestions: SourceSuggestion.where(status: 'new').count,
      pending_evidence_items: EvidenceItem.where(status: 'submitted').count,
      pending_revisions: SuggestedChange.where(status: 'new').count,
      open_flags: Flag.where(state: 'open').count
    }
  end
end
