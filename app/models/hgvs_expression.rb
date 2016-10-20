class HgvsExpression < ActiveRecord::Base
  has_and_belongs_to_many :variants

  def display_name
    expression
  end

  def self.my_gene_info_hgvs(variant)
    valid_for_query =[
      variant.chromosome.nil?,
      variant.chromosome2.present?,
      variant.start2.present?,
      variant.start.nil?,
    ].none?

    if valid_for_query
      chromosome = "chr#{variant.chromosome}"
      base_hgvs = "#{chromosome}:g.#{variant.start}"
      case variant_type(variant)
      when :deletion
        if variant.reference_bases.size > 1
          "#{base_hgvs}_#{variant.stop1}del"
        else
          "#{base_hgvs}del"
        end
      when :substitution
        "#{base_hgvs}#{variant.reference_bases}>#{variant.variant_bases}"
      when :insertion
        "#{base_hgvs}_#{variant.start.to_i + variant.variant_bases.size}ins#{variant.variant_bases}"
      when :indel
        if variant.reference_bases.size > 1
          "#{base_hgvs}_#{variant.stop1}delins#{variant.variant_bases}"
        else
          "#{base_hgvs}delins#{variant.variant_bases}"
        end
      else
        nil
      end
    else
      nil
    end
  end

  def self.variant_type(variant)
    if variant.reference_bases.present? && variant.variant_bases.empty?
      :deletion
    elsif variant.reference_bases.empty? && variant.variant_bases.present?
      :insertion
    elsif variant.reference_bases.size == 1 && variant.variant_bases.size == 1
      :substitution
    elsif variant.reference_bases.size > 1 && variant.variant_bases.size > 1
      :indel
    else
      nil
    end
  end
end
