class VariantAuditsController < AuditsController
  private
  def audited_object
    Variant.find_by!(name: params[:variant_id])
  end
end
