class DocmController < ApplicationController
  actions_without_auth :variant_index

  def variant_index
    variants = Variant.eager_load(:gene, evidence_items: [:source, :disease])
      .where(chromosome2: nil, status: 'accepted')
      .where('char_length(reference_bases) = 1')
      .where.not(
        chromosome: nil,
        start: nil,
        stop: nil,
        reference_bases: nil,
        representative_transcript: nil,
        variant_bases: nil)
      .page(params[:page])
      .per(params[:count])

      render json: DocmVariantsPresenter.new(variants)
  end
end
