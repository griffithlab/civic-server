class ParseVariantHgvsIntoPositions < ActiveJob::Base
  def perform
    ActiveRecord::Base.transaction do
      Variant.includes(:gene, :evidence_items).find_each do |variant|
        hgvs = variant.evidence_items.map(&:variant_hgvs).reject { |x| x == 'N/A' }
        if hgvs.any?
          if hgvs.uniq.size > 1
            puts "Conflicting positional information for #{gene.name}:#{variant.name}"
          elsif position_data = extract_positions(hgvs.first)
            variant.chromosome = position_data[:chr]
            variant.start = position_data[:start]
            variant.stop = position_data[:stop]
            variant.reference_bases = position_data[:ref]
            variant.variant_bases = position_data[:var]
            variant.save
          else
            puts "HGVS for #{gene.name}:#{variant.name} (#{hgvs.first}) did not match expected format"
          end
        end
      end
    end
  end

  private
  def extract_positions(val)
    @regex ||= Regexp.new(/^(?<chr>[\dXY]{1,2}):(?<start>\d+)-(?<stop>\d+) \((?<ref>[^->\)]+)->(?<var>[^->\)]+)\)$/)
    @regex.match(val)
  end
end