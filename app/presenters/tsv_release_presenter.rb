class TsvReleasePresenter
  attr_reader :release

  def initialize(release)
    @release = release
  end

  def as_json(options = {})
    {
      note: release.path,
      files: file_names,
    }
  end

  private
  def download_path_for_file(file_name)
    "/downloads/#{release.path}/#{release.path}-#{file_name}"
  end

  def file_names
    GenerateTsvs.new
      .tsvs_to_generate
      .map { |f| download_path_for_file(f.file_name) }
  end
end
