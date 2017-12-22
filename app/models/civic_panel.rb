class CivicPanel
  attr_reader :score_cutoff, :pipeline_type

  def initialize(score_cutoff = 30, pipeline_type = '')
    @score_cutoff = score_cutoff.to_i
    @pipeline_type = pipeline_type.downcase
  end

  def variants
    variants = PipelineType.includes(variant_types: {variants: [gene: [], variant_types: [], evidence_items: {disease: [], drugs: [], open_changes: [], source: [:clinical_trials]}]})
                 .find_by('lower(pipeline_types.name) = ?', pipeline_type)
                 .variant_types
                 .flat_map(&:variants)
                 .reject { |v| v.chromosome.blank? || v.start.blank? }
                 .uniq

    variants.reject do |v|
      v.civic_actionability_score <= score_cutoff
    end
  end
end
