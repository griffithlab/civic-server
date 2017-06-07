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
      scores.inject(0) do |total_score, (_, score_for_ei)|
        total_score += score_for_ei
      end
    end

    def calculate_scores
      variant.evidence_items.each_with_object({}) do |ei, evidence_scores|
        evidence_scores[ei] = if ei.status == 'accepted'
                                calculate_score(ei)
                              else
                                0
                              end
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
        'E' => 0.25,
      }
    end
  end
end