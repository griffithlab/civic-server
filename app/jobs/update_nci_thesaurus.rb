require 'tempfile'
require 'open-uri'

class UpdateNciThesaurus < ActiveJob::Base
  attr_reader :ncit_file

  def perform(recurring = true)
    begin
      create_tempfile
      download_file
      import_ncit
    ensure
      remove_download
      reschedule if recurring
    end
  end

  def create_tempfile
    @ncit_file = Tempfile.new('ncit_download', File.join(Rails.root, 'tmp'))
  end

  def download_file
    download_stream = open(latest_ncit_path)
    IO.copy_stream(download_stream, ncit_file)
  end

  def import_ncit
    importer = Importer::NciThesaurusMirror.new(ncit_file)
    importer.import
  end

  def remove_download
    ncit_file.close
    ncit_file.unlink
  end

  def reschedule
    self.class.set(wait_until: next_week).perform_later
  end

  def latest_ncit_path
    "https://stars.renci.org/var/NCIt/ncit.obo"
  end

  def next_week
    Date.today
      .beginning_of_week
      .next_week
      .midnight
  end
end
