class CivicPanel
  attr_reader :score_cutoff, :pipeline_type

  def initialize(score_cutoff = 30, pipeline_type = '')
    @score_cutoff = score_cutoff.to_i
    @pipeline_type = pipeline_type.downcase
  end

  def variants
    variants = PipelineType.includes(variant_types: {variants: [:evidence_items, :gene]})
                 .find_by('lower(pipeline_types.name) = ?', pipeline_type)
                 .variant_types
                 .flat_map(&:variants)
                 .reject { |v| v.chromosome.blank? || v.start.blank? }
                 .uniq

    variants.reject do |v|
      Actions::CalculateCivicScore.new(v).perform <= score_cutoff
    end
  end

  def presenter_classname
    {
      'captureseq' => Panels::CaptureSeq,
      'nanostring' => Panels::NanoString
    }[pipeline_type]
  end
end
