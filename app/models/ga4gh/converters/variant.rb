require 'ga4gh/sequence_annotations'

module Ga4gh; module Converters
  class Variant
    def from_ga4gh(feature)
      if (id = feature.id).present?
        ::Variant.find(id.to_i)
      elsif (name = feature.name.present?)
        ::Variant.find_by(name: name)
      else
        nil
      end
    end

    def to_ga4gh(variant)
      Ga4gh::Feature.new(
        id: variant.id.to_s,
        name: variant.name,
        gene_symbol: variant.gene.name,
        parent_id: '',
        child_ids: [],
        feature_set_id: '',
        reference_name: variant.chromosome,
        start: variant.start.to_i,
        end: variant.stop.to_i,
        feature_type: Ga4gh::Converters::VariantType.new.to_ga4gh(variant.variant_types.first),
      )
    end
  end
end; end

#missing:
# strand
# multiple variant types?
# Attribute?
# child_ids:
#
# potential attributes: transcript, reference build, summary??