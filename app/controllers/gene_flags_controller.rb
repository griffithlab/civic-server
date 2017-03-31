class GeneFlagsController < FlagsController
  private
  def flaggable
    Gene.find_by!(id: params[:gene_id])
  end
end
