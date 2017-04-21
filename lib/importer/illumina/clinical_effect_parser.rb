module Importer; module Illumina
  class ClinicalEffectParser
    attr_reader :clinical_effect, :tag_regex, :pubmed_regex, :evidence_level

    def initialize(clinical_effect, pubmed_id)
      @clinical_effect = clinical_effect
      @tag_regex = Regexp.new('\[\/{0,1}[^\]]+\]')
      @pubmed_regex = Regexp.new(pubmed_id)
      @evidence_level = nil
      @pubmed_id = pubmed_id
    end

    def evidence_statement
      remove_internal_tags(filter_for_pubmed_ids(split_entry))
      .map(&:strip)
      .join(' ')
      .gsub(/ \./, '.')
    end

    private
    def split_entry
      clinical_effect.gsub('[/bp]', ' ')
      .split('|')
      .flat_map { |line| line.split('[bp]') }
      .reject { |x| x.blank? }
    end

    def filter_for_pubmed_ids(lines)
      selected_lines = lines.select { |line| line =~ pubmed_regex }
      accepted_lines = []
      selected_lines.each do |line|
        found_index = lines.index(line)
        tenative_level = nil
        header_found = false
        (found_index - 1).downto(0) do |index|
          if lines[index] =~ /^\[/ && (header = lines[index].gsub(tag_regex, '')).present?
            header_found = true
            tenative_level = Importer::Illumina::Mappings.evidence_level_from_clinical_effect(header)
            if tenative_level.present?
              accepted_lines << line
              break
            end
          end
          break if header_found
        end
        @evidence_level ||= tenative_level
      end

      if evidence_level.nil?
        []
      else
        accepted_lines
      end
    end

    def remove_internal_tags(lines)
      lines.map { |line| line.gsub(tag_regex, '') }
    end
  end
end; end