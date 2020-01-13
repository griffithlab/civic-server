require 'tempfile'
require 'open-uri'

class UpdateNciThesaurus < ApplicationJob
  attr_reader :ncit_file

  def perform
    begin
      create_tempfile
      download_file
      import_ncit
    ensure
      remove_download
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

  def latest_ncit_path
    "https://stars.renci.org/var/NCIt/ncit.obo"
  end
end
