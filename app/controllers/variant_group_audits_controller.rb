class VariantGroupAuditsController < AuditsController
  private
  def audited_object
    VariantGroup.find_by!(id: params[:variant_group_id])
  end
end
