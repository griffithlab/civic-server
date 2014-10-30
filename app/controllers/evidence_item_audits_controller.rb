class EvidenceItemAuditsController < AuditsController
  private
  def audited_object
    EvidenceItem.find_by!(id: params[:evidence_item_id])
  end
end
