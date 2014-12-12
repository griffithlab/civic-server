class VariantAuditsController < AuditsController
  private
  def audited_object
    Variant.find_by!(id: params[:variant_id])
  end
end
