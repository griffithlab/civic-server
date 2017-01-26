require 'tempfile'
require 'open-uri'

class UpdateSequenceOntology < ActiveJob::Base
  attr_reader :soid_file

  def perform(recurring = true)
    begin
      create_tempfile
      download_file
      import_soid
    ensure
      remove_download
      reschedule if recurring
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

  def reschedule
    self.class.set(wait_until: next_week).perform_later
  end

  def latest_soid_path
    "https://github.com/The-Sequence-Ontology/SO-Ontologies/raw/master/releases/so-xp.owl/so-xp.obo"
  end

  def next_week
    Date.today
      .beginning_of_week
      .next_week
      .midnight
  end
end