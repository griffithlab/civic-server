namespace :civic do
  desc 'import TSV spreadsheets of raw data for civic'
  task :import, [:tsv_path] => :environment do |_, args|
    file_path = args[:tsv_path]
    raise "File #{file_path} not found!" unless File.exists? file_path
    Importer::TsvReader.new(file_path, Importer::GeneVariantAdaptor.new).import!
  end
end
