class GeneCommentsController < CommentsController
  private
  def commentable
    Gene.find_by!(id: params[:gene_id])
  end
end
