class GenerateTsvs < ActiveJob::Base
  def perform(reschedule = false)
    ensure_downloads_directory_exists
    entities.each do |e|
      begin
        tmp_file = tmp_file(e.file_name)
        tmp_file.puts(e.headers.join("\t"))
        e.objects.find_each do |object|
          tmp_file.puts(e.row_from_object(object).join("\t"))
        end
        tmp_file.close
        FileUtils.cp(tmp_file.path, public_file_path(e.file_name))
      ensure
        tmp_file.unlink
      end
    end
    if reschedule
      self.class.set(wait_until: Date.tomorrow.midnight).perform_later(true)
    end
  end

  private
  def entities
    [GeneTsvPresenter, VariantTsvPresenter, EvidenceItemTsvPresenter, VariantGroupTsvPresenter]
  end

  def tmp_file(filename)
    Tempfile.new(filename, File.join(Rails.root, 'tmp'))
  end

  def ensure_downloads_directory_exists
    FileUtils.mkdir_p(downloads_dir_path)
  end

  def public_file_path(filename)
    File.join(downloads_dir_path, filename)
  end

  def downloads_dir_path
    File.join(Rails.root, 'public', 'downloads')
  end
end
