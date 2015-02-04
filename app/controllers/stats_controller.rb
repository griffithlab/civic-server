class StatsController < ApplicationController
  skip_before_filter :ensure_signed_in

  def site_overview
    site_stats = Rails.cache.fetch('site_overview', expires_in: 5.minutes) do
      {
        user_count: User.count,
        gene_count: Gene.count,
        evidence_item_count: EvidenceItem.count,
        variant_count: Variant.count,
        accepted_edit_count: SuggestedChange.where(status: 'applied').count,
        pending_edit_count: SuggestedChange.where(status: 'new').count,
        comment_count: Comment.count,
      }
    end

    render json: site_stats
  end
end
