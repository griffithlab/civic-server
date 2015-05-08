class StatsController < ApplicationController
  skip_before_filter :ensure_signed_in, except: [:current_user_stats]

  def site_overview
    site_stats = Rails.cache.fetch('site_overview', expires_in: 5.minutes) do
      {
        accepted_edit_count: SuggestedChange.where(status: 'applied').count,
        pending_edit_count: SuggestedChange.where(status: 'new').count,
      }.merge(generate_site_overview_stats)
    end

    render json: site_stats
  end

  def evidence_item_stats
    evidence_item_stats = Rails.cache.fetch('evidence_items_stats', expires_in: 5.minutes) do
      EvidenceType.type_count_hash
        .merge(EvidenceLevel.level_count_hash)
        .merge(VariantOrigin.origin_count_hash)
    end

    render json: evidence_item_stats
  end

  def current_user_stats
    stats = Rails.cache.fetch("user_stats_#{current_user.id}", expires_in: 1.minute) do
      current_user.stats_hash
    end
    render json: stats
  end

  private
  def generate_site_overview_stats
    [Gene, Variant, EvidenceItem, Drug, Disease, Source, User, Comment].each_with_object({}) do |klass, h|
      h[klass.table_name] = {
        new_this_week: klass.count_this_week,
        new_this_month: klass.count_this_month,
        new_this_year: klass.count_this_year,
        total: klass.count
      }
    end
  end
end
