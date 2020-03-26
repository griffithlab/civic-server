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
    limit_by_status = params['limit_by_status']
    gene_name_filter = params['entrez_name']

    dashboard = Rails.cache.fetch("dashboard_overview_accepted_only_#{limit_by_status}_#{gene_name_filter}", expires_in: 1.hour) do
      OverviewDashboard.new(limit_by_status, gene_name_filter).results
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
    stats = Rails.cache.fetch("community-stats-summary", expires_in: 10.minutes) do
      {
        badge_user_count: badge_user_count,
        role_user_count: role_user_count,
        organization_user_count: organization_user_count,
        country_user_count: country_user_count,
        area_of_expertise_user_count: area_of_expertise_user_count,
      }
    end
    render json: stats
  end

  def badge_user_count
    Badge.all
      .each_with_object({}) do |b, h|
        h[b.display_name] = b.badge_awards.group(:tier).count
      end
  end

  def role_user_count
    User.group(:role)
      .count.map{|role, count| [User.roles.invert[role], count]}
      .to_h
  end

  def organization_user_count
    User.joins(:organizations).group(:organizations)
      .count
      .delete_if{|key, value| key.nil?}
      .map{|organization, count| [organization.name, count]}
      .to_h
  end

  def country_user_count
    User.group(:country)
      .count
      .delete_if{|key, value| key.nil?}
      .map{|country, count| [country.name, count]}
      .to_h
  end

  def area_of_expertise_user_count
    User.group(:area_of_expertise)
      .count
      .delete_if{|key, value| key.nil?}
      .map{|area, count| [User.area_of_expertises.invert[area], count]}
      .to_h
  end

  private
  def generate_site_overview_stats
    [Gene, Variant, EvidenceItem, Drug, Disease, Source, User, Comment, SuggestedChange, Assertion].each_with_object({}) do |klass, h|
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
