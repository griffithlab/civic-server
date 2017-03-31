class EvidenceItemFlagsController < FlagsController
  private
  def flaggable
    EvidenceItem.find_by!(id: params[:evidence_item_id])
  end
end
