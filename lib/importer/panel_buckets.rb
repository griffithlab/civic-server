module Importer
  class PanelBuckets
    def self.import!(file = 'capture_buckets.tsv')
      Importer::TsvReader.new(file, Importer::PanelBucketAdaptor).import!
    end
  end
end