require 'tempfile'
require 'open-uri'

class UpdateDiseaseOntology < ApplicationJob
  attr_reader :doid_file

  def perform
    begin
      create_tempfile
      download_file
      import_doid
    ensure
      remove_download
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

  def latest_doid_path
    "https://raw.githubusercontent.com/DiseaseOntology/HumanDiseaseOntology/main/src/ontology/subsets/DO_cancer_slim.obo"
  end
end
