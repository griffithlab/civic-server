class GeneAuditsController < AuditsController
  private
  def audited_object
    Gene.find_by!(id: params[:gene_id])
  end
end
