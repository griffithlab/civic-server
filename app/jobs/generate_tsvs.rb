class GenerateTsvs < ActiveJob::Base
  def perform
    ensure_downloads_directory_exists
    tsvs_to_generate.each do |e|
      begin
        tmp_file = tmp_file(e.file_name)
        tmp_file.puts(e.headers.join("\t"))
        e.objects.find_each do |object|
          tmp_file.puts(e.row_from_object(object).join("\t"))
        end
        tmp_file.close
        public_path = public_file_path(e.file_name)
        FileUtils.cp(tmp_file.path, public_path)
        File.chmod(0644, public_path)
      ensure
        tmp_file.unlink
      end
    end
  end

  def tsvs_to_generate
    [GeneTsvPresenter, VariantTsvPresenter, EvidenceItemTsvPresenter, VariantGroupTsvPresenter, AssertionTsvPresenter]
  end

  private
  def tmp_file(filename)
    Tempfile.new(filename, File.join(Rails.root, 'tmp'))
  end

  def ensure_downloads_directory_exists
    FileUtils.mkdir_p(downloads_dir_path)
  end

  def public_file_path(filename)
    desination_filename = [filename_prefix, filename].join('-')
    File.join(downloads_dir_path, desination_filename)
  end

  def downloads_dir_path
    File.join(TsvRelease.downloads_path, release_path)
  end

  def release_path
    raise 'Implement in subclass!'
  end

  def filename_prefix
    raise 'Implement in subclass!'
  end
end
