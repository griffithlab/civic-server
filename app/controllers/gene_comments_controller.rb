class GeneCommentsController < CommentsController
  private
  def commentable
    Gene.find_by!(entrez_id: params[:gene_id])
  end
end
