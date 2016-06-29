class DocmController < ApplicationController
  actions_without_auth :variant_index

  def variant_index
    variants = Variant.eager_load(:gene, evidence_items: [:source, :disease])
    .order('variants.id asc')
    .where(chromosome2: nil, evidence_items: {status: 'accepted'})
    .where('char_length(reference_bases) = 1')
    .where('char_length(variant_bases) < 3')
    .where.not(
      chromosome: nil,
      start: nil,
      stop: nil,
      reference_bases: nil,
      representative_transcript: nil,
      variant_bases: nil)
    .where.not(evidence_items: { diseases: { doid: nil }})
    .page(params[:page])
    .per(params[:count])

    render json: PaginatedCollectionPresenter.new(
      variants,
      request,
      DocmVariantPresenter,
      PaginationPresenter
    )
  end
end
