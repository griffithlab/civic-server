namespace :civic do
  desc 'import TSV spreadsheets of raw data for civic'
  task :import, [:gene_variants_file, :clinical_evidence_file] => :environment do |_, args|
    import_files = [
      [:gene_variants_file, Importer::GeneVariantAdaptor],
      [:clinical_evidence_file, Importer::ClinicalEvidenceAdaptor]
    ]

    import_files.each do |(arg_name, adaptor_type)|
      file_path = args[arg_name]
      raise "File #{file_path} not found!" unless File.exists? file_path
      Importer::TsvReader.new(file_path, adaptor_type.new).import!
    end
  end
end
