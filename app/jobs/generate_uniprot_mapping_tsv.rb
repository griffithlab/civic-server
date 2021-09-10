class GenerateUniprotMappingTsv < ApplicationJob
  def perform
    ensure_downloads_directory_exists
    p = UniprotMappingTsvPresenter
    begin
      tmp_file = tmp_file(p.file_name)
      tmp_file.puts(p.headers.join("\t"))

      Gene.joins(variants: :evidence_items).distinct.find_each do |gene|  
        rows = p.rows_from_object(gene)

        rows.each do |r|
          tmp_file.puts(r.join("\t"))
        end
      end
      tmp_file.close
      public_path = public_file_path(p.file_name)
      FileUtils.cp(tmp_file.path, public_path)
      File.chmod(0644, public_path)
    ensure
      tmp_file.unlink
    end
  end

  private
  def tmp_file(filename)
    Tempfile.new(filename, File.join(Rails.root, 'tmp'))
  end

  def ensure_downloads_directory_exists
    FileUtils.mkdir_p(downloads_dir_path)
  end
  
  def tsvs_to_generate
    [UniprotMappingTsvPresenter]
  end

  def public_file_path(filename)
    File.join(downloads_dir_path, filename)
  end

  def downloads_dir_path
    TsvRelease.downloads_path
  end
end