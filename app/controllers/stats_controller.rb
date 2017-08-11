class StatsController < ApplicationController
  actions_without_auth :site_overview, :user_stats, :dashboard, :community

  def site_overview
    site_stats = Rails.cache.fetch('site_overview', expires_in: 5.minutes) do
      {
        accepted_edit_count: SuggestedChange.where(status: 'applied').count,
        pending_edit_count: SuggestedChange.where(status: 'new').count,
        pending_evidence_item_count: EvidenceItem.where(status: 'submitted').count
      }.merge(generate_site_overview_stats)
    end

    render json: site_stats
  end

  def dashboard
    dashboard = Rails.cache.fetch('dashboard_overview', expires_in: 1.hour) do 
      OverviewDashboard.new.results
    end
    render json: dashboard
  end

  def user_stats
    render json: stats_for_user(User.find_by!(id: params[:user_id]))
  end

  def current_user_stats
    skip_authorization
    render json: stats_for_user(current_user)
  end

  def community
    stats = {
      badge_user_count: Badge.all.each_with_object({}) {|b, h| h[b.name] = b.badge_awards_count_per_tier },
      role_user_count: User.all.each_with_object(Hash.new(0)) {|u, h| h[u.role] += 1},
      organization_user_count: Organization.all.each_with_object({}) {|o, h| h[o.name] = o.users.count},
      country_user_count: Country.all.each_with_object({}) {|c, h| h[c.name] = c.users.count},
      area_of_expertise_user_count: User.all.each_with_object(Hash.new(0)) {|u, h| h[u.area_of_expertise] += 1},
    }
    render json: stats
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
