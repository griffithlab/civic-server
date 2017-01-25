require 'tempfile'
require 'open-uri'

class UpdateDiseaseOntology < ActiveJob::Base
  attr_reader :doid_file

  def perform(recurring = true)
    begin
      puts 'creating tempfile'
      create_tempfile
      puts 'downloading file'
      download_file
      puts 'importing file'
      import_doid
    ensure
      remove_download
      reschedule if recurring
    end
  end

  def create_tempfile
    @doid_file = Tempfile.new('doid_download', File.join(Rails.root, 'tmp'))
  end

  def download_file
    download_stream = open(latest_doid_path)
    IO.copy_stream(download_stream, doid_file)
  end

  def import_doid
    importer = Importer::DiseaseOntologyMirror.new(doid_file)
    importer.import
  end

  def remove_download
    doid_file.close
    doid_file.unlink
  end

  def reschedule
    self.class.set(wait_until: next_week).perform_later
  end

  def latest_doid_path
    "https://raw.githubusercontent.com/DiseaseOntology/HumanDiseaseOntology/master/src/ontology/subsets/DO_cancer_slim.obo"
  end

  def next_week
    Date.today
      .beginning_of_week
      .next_week
      .midnight
  end
end