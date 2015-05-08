class GeneSubscriptionsController < SubscriptionsController
  private
  def subscribable
    Gene.find_by(id: params[:gene_id])
  end
end
