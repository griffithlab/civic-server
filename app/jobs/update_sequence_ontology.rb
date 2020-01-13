require 'tempfile'
require 'open-uri'

class UpdateSequenceOntology < ApplicationJob
  attr_reader :soid_file

  def perform
    begin
      create_tempfile
      download_file
      import_soid
    ensure
      remove_download
    end
  end

  def create_tempfile
    @soid_file = Tempfile.new('soid_download', File.join(Rails.root, 'tmp'))
  end

  def download_file
    download_stream = open(latest_soid_path)
    IO.copy_stream(download_stream, soid_file)
  end

  def import_soid
    importer = Importer::SequenceOntologyMirror.new(soid_file)
    importer.import
  end

  def remove_download
    soid_file.close
    soid_file.unlink
  end

  def latest_soid_path
    "https://raw.githubusercontent.com/The-Sequence-Ontology/SO-Ontologies/master/releases/so-xp.owl/so.obo"
  end
end