class OverviewDashboard
  def results
    available_stats.each_with_object({}) do |(stat_name, calculator), h|
      h[stat_name] = calculator.call
    end
  end

  private
  def available_stats
    {
      'counts_by_evidence_type'  => ->() { EvidenceItem.count_by_evidence_type },
      'counts_by_evidence_level' => ->() { EvidenceItem.count_by_evidence_level },
      'counts_by_evidence_direction' => ->() { EvidenceItem.count_by_evidence_direction },
      'counts_by_variant_origin' => ->() { EvidenceItem.count_by_variant_origin },
      'counts_by_clinical_significance' => ->() { EvidenceItem.count_by_clinical_significance },
      'counts_by_rating' => ->() { EvidenceItem.group(:rating).count },
      'counts_by_status' => ->() { EvidenceItem.group(:status).count },
      'top_journals_with_levels' => method(:top_journals_with_levels),
      'top_journals_with_types' => method(:top_journals_with_types),
      'count_by_source_publication_year' => method(:count_by_publication_year),
    }
  end

  def top_journals_with_levels
    top_journals.each_with_object({}) do |source, h|
      counts_by_level = {}
      EvidenceItem.where(id: source.eids)
        .group(:evidence_level)
        .count
        .each { |(k,v)| next if k.nil?; counts_by_level[EvidenceItem.evidence_levels.key(k).downcase] = v }
      h[source.journal] = counts_by_level
    end
  end

  def top_journals_with_types
    top_journals.each_with_object({}) do |source, h|
      counts_by_type = {}
      EvidenceItem.where(id: source.eids)
        .group(:evidence_type)
        .count
        .each { |(k,v)| next if k.nil?; counts_by_type[EvidenceItem.evidence_types.key(k).downcase] = v }
      h[source.journal] = counts_by_type
    end
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
end
