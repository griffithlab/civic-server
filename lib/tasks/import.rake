namespace :civic do
  desc 'import TSV spreadsheets of raw data for civic'
  task :import, [:gene_summaries_file, :variant_summaries_file, :clinical_action_evidence_file] => :environment do |_, args|
    import_files = [
      [:gene_summaries_file, Importer::GeneSummariesAdaptor],
      [:variant_summaries_file, Importer::VariantSummariesAdaptor],
      [:clinical_action_evidence_file, Importer::ClinicalActionEvidenceAdaptor],
    ]

    import_files.each do |(arg_name, adaptor_type)|
      file_path = args[arg_name]
      raise "File #{file_path} not found!" unless File.exists? file_path
      Importer::TsvReader.new(file_path, adaptor_type.new).import!
      puts "Finished #{arg_name}"
    end

    Scrapers::PubMed.run
  end
end
