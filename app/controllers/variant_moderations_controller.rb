class VariantModerationsController < ModerationsController
  private
  def moderated_object
    Variant.find_by!(id: params[:variant_id])
  end

  def moderation_params
    params.permit(:name, :description, :genome_build, :chromosome, :start, :stop, :reference_bases, :variant_bases, :representative_transcript, :chromosome2, :start2, :stop2, :reference_build, :representative_transcript2, :ensembl_version)
  end

  def additional_moderation_params
    params.permit(variant_types: [], variant_aliases: [], sources: [], hgvs_expressions: [], clinvar_entries: [])
  end

  def presenter_class
    VariantDetailPresenter
  end
end
