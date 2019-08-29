class OverviewDashboard
  attr_reader :limit_by_status, :gene_name_filter_string

  def initialize(limit_by_status = nil, gene_name_filter_string = nil)
    @limit_by_status = limit_by_status
    @gene_name_filter_string = gene_name_filter_string
  end

  def results
    available_stats.each_with_object({}) do |(stat_name, calculator), h|
      h[stat_name] = calculator.call
    end
  end

  private
  def available_stats
    (where_clause, join_clause) = filters_and_joins
    {
      'counts_by_evidence_type'              => ->() { EvidenceItem.count_by_evidence_type(where_clause, join_clause) },
      'counts_by_evidence_level'             => ->() { EvidenceItem.count_by_evidence_level(where_clause, join_clause) },
      'counts_by_evidence_direction'         => ->() { EvidenceItem.count_by_evidence_direction(where_clause, join_clause) },
      'counts_by_variant_origin'             => ->() { EvidenceItem.count_by_variant_origin(where_clause, join_clause) },
      'counts_by_clinical_significance'      => ->() { EvidenceItem.count_by_clinical_significance(where_clause, join_clause) },
      'counts_by_rating'                     => ->() { EvidenceItem.where(where_clause).joins(join_clause).group(:rating).count },
      'counts_by_status'                     => ->() { EvidenceItem.where(where_clause).joins(join_clause).group(:status).count },
      'counts_by_pending_revisions'          => ->() { count_by_pending_revisions(where_clause, join_clause) },
      'top_journals_with_levels'             => ->() { count_eids_by_field(top_journals, :journal, :evidence_level) },
      'top_journals_with_types'              => ->() { count_eids_by_field(top_journals, :journal, :evidence_type) },
      'top_diseases_with_levels'             => ->() { count_eids_by_field(top_diseases, :display_name, :evidence_level) },
      'top_diseases_with_types'              => ->() { count_eids_by_field(top_diseases, :display_name, :evidence_type) },
      'top_drugs_with_levels'                => ->() { count_eids_by_field(top_drugs, :name, :evidence_level) },
      'top_drugs_with_clinical_significance' => ->() { count_eids_by_field(top_drugs, :name, :clinical_significance) },
      'count_by_source_publication_year'     => method(:count_by_publication_year),
      'organization_user_count'              => method(:organization_user_count),
      'organization_badge_count'             => method(:organization_badge_count),
      'organization_activity_count'          => method(:organization_activity_count),
    }
  end

  def filters_and_joins
    (status, status_value) = status_filter
    (gene_join, (gene, gene_value)) = gene_name_filter
    condition = [status, gene].reject(&:blank?).join(' AND ')
    values = [status_value, gene_value].reject(&:blank?)
    where_clause = values.prepend(condition)
    [where_clause, gene_join]
  end

  def status_filter
    if limit_by_status.present?
      ['evidence_items.status = ?', limit_by_status]
    else
      []
    end
  end

  def gene_name_filter
    if gene_name_filter_string.present?
      [{variant: [:gene]}, ['genes.name ILIKE ?', gene_name_filter_string]]
    else
      [nil, []]
    end
  end

  def count_eids_by_field(objs, key, enumerated_field)
    objs.each_with_object({}) do |entity, h|
      counts = {}
      EvidenceItem.where(id: entity.eids)
        .group(enumerated_field)
        .count
      h[entity.send(key)] = counts
    end
  end

  def top_drugs
    @top_drugs ||= Drug.joins(:evidence_items)
      .group('drugs.name')
      .select('drugs.name, array_agg(distinct(evidence_items.id)) as eids')
      .order('count(distinct(evidence_items.id)) desc')
      .limit(25)
  end

  def top_diseases
    @top_diseases ||= Disease.joins(:evidence_items)
      .group('diseases.display_name')
      .select('diseases.display_name, array_agg(evidence_items.id) as eids')
      .order('count(distinct(evidence_items.id)) desc')
      .limit(25)
  end

  def top_journals
    @top_journals ||= Source.joins(:evidence_items)
      .group('sources.journal')
      .select('sources.journal, array_agg(evidence_items.id) as eids')
      .order('count(distinct(evidence_items.id)) desc')
      .limit(25)
  end

  def count_by_publication_year
    {}.tap do |counts|
      Source.joins(:evidence_items)
        .group('sources.publication_year')
        .where.not(publication_year: nil)
        .select('sources.publication_year, count(distinct(evidence_items.id)) as evidence_item_count')
        .order('publication_year asc').each_with_object(counts) do |source, counts|
          counts[source.publication_year] = source.evidence_item_count unless source.evidence_item_count == 0
        end
    end
  end

  def count_by_pending_revisions(where_filter, join_clause)
    eid_count_with_pending_changes = EvidenceItem.joins(:suggested_changes).joins(join_clause).where("suggested_changes.status = 'new'").where(where_filter).count
    {
      'has_pending_changes': eid_count_with_pending_changes,
      'has_no_pending_changes': EvidenceItem.joins(join_clause).where(where_filter).count - eid_count_with_pending_changes
    }
  end

  def organization_user_count
    User.group(:organization)
      .count
      .delete_if{|key, value| key.nil?}
      .map{|organization, count| [organization.name, count]}
      .to_h
  end

  def organization_badge_count
    BadgeAward.joins(:badge, user: [:organization])
      .group("badge_awards.tier, badges.name, organizations.name")
      .select("count(badge_awards.id) as badge_count, badge_awards.tier, organizations.name as org_name, badges.name as badge_name")
      .group_by{|award| award.org_name}
      .map{|org, awards| [org, awards.group_by{|award| award.badge_name}.map{|badge_name, awards| [badge_name, awards.map{|award| [award.tier, award.badge_count]}.to_h]}.to_h]}.to_h
  end

  def organization_activity_count
    organizations_with_members = Organization.joins(:users).group('organizations.id, organizations.name')
      .select('organizations.name, array_agg(users.id) as member_ids')

    organizations_with_members.each_with_object({}) do |org, h|
      h[org.name] = {
        evidence_counts: EvidenceItem.joins(:submitter).where('users.id' =>  org.member_ids).group(:status).count,
        suggested_change_counts: SuggestedChange.where(user_id: org.member_ids).group(:status).count,
        assertion_count: Assertion.joins(:submitter).where('users.id' => org.member_ids).group(:status).count
      }
    end
  end
end
