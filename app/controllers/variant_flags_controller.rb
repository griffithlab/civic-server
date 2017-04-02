class VariantFlagsController < FlagsController
  private
  def flaggable
    Variant.find_by!(id: params[:variant_id])
  end
end
