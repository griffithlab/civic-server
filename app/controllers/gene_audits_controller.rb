class GeneAuditsController < AuditsController
  private
  def audited_object
    Gene.find_by!(entrez_id: params[:gene_id])
  end
end
