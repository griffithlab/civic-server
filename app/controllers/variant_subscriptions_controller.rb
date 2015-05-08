class VariantSubscriptionsController < SubscriptionsController
  private
  def subscribable
    Variant.find_by(id: params[:variant_id])
  end
end
