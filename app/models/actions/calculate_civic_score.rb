module Actions
  class CalculateCivicScore
    attr_reader :variant

    def initialize(variant)
      @variant = variant
    end

    def perform
      scores = calculate_scores
      aggregate_scores(scores)
    end

    private
    def aggregate_scores(scores)
      scores.inject(0) do |total_score, (ei, score_for_ei)|
        if should_count?(ei)
          total_score += score_for_ei
        elsif should_subtract?(ei)
          total_score -= score_for_ei
        else
          total_score
        end
      end
    end

    def should_subtract?(ei)
      if should_count?(ei)
        false
      else
        variant.evidence_items.each do |other_ei|
          return true if ei.disease == other_ei.disease && ei.variant == other_ei.variant
        end
        false
      end
    end

    def should_count?(ei)
      if ['Diagnostic', 'Prognostic', 'Predisposing'].include?(ei.evidence_type) &&
        ei.evidence_direction == 'Does Not Support'
        false
      else
        true
      end
    end

    def calculate_scores
      variant.evidence_items.each_with_object({}) do |ei, evidence_scores|
        evidence_scores[ei] = calculate_score(ei)
      end
    end

    def calculate_score(ei)
      (evidence_level_values[ei.evidence_level] || 0) * (ei.rating || 0)
    end

    def evidence_level_values
      @values ||= {
        'A' => 10.0,
        'B' => 5.0,
        'C' => 2.5,
        'D' => 1.0,
        'E' => 0.0,
      }
    end
  end
end