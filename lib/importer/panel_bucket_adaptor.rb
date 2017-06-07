module Importer
  class PanelBucketAdaptor
    def self.valid_row?(row)
      true
    end

    def self.create_entities_for_row(row)
      variant_type = VariantType.find_by(soid: row['soid'])
      if variant_type
        existing_pipelines = variant_type.pipeline_types
        pipeline_types.each do |type|
          if row[type].present? && row[type].downcase == 'yes'
            existing_pipelines << PipelineType.where(name: type).first_or_create
          end
        end
        variant_type.pipeline_types = existing_pipelines.uniq
      end
    end

    def self.pipeline_types
      ["CaptureSeq", "NanoString"]
    end
  end
end
