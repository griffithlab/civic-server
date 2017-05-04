class VariantGroupFlagsController < FlagsController
  private
  def flaggable
    VariantGroup.find_by!(id: params[:variant_group_id])
  end
end
