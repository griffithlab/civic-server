class GeneAuditsController < AuditsController
  private
  def audited_object
    Gene.find_by!(name: params[:gene_id])
  end
end
