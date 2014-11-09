class EvidenceItemCommentsController < CommentsController
  private
  def commentable
    EvidenceItem.find_by!(id: params[:evidence_item_id])
  end
end
