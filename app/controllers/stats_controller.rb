class StatsController < ApplicationController
  actions_without_auth :site_overview, :user_stats, :evidence_item_stats

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
      {
        evidence_type_counts: EvidenceItem.count_by_evidence_type,
        evidence_level_counts: EvidenceItem.count_by_evidence_level,
        evidence_direction_counts: EvidenceItem.count_by_evidence_direction,
        variant_origin_counts: EvidenceItem.count_by_variant_origin,
        clinical_significance_counts: EvidenceItem.count_by_clinical_significance
      }
    end

    render json: evidence_item_stats
  end

  def user_stats
    render json: stats_for_user(User.find_by!(id: params[:user_id]))
  end

  def current_user_stats
    skip_authorization
    render json: stats_for_user(current_user)
  end

  private
  def generate_site_overview_stats
    [Gene, Variant, EvidenceItem, Drug, Disease, Source, User, Comment, SuggestedChange].each_with_object({}) do |klass, h|
      h[klass.table_name] = {
        new_this_week: klass.count_this_week,
        new_this_month: klass.count_this_month,
        new_this_year: klass.count_this_year,
        total: klass.count_all_time
      }
    end
  end

  def stats_for_user(user)
    Rails.cache.fetch("user_stats_#{user.id}", expires_in: 1.minute) do
      user.stats_hash
    end
  end
end
