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
      .map { |f| valid_path?(f.file_name) ? download_path_for_file(f.file_name) : nil}
  end

  def valid_path?(file_name)
    if file_name == 'AssertionSummaries.tsv'
      release.path == 'nightly' or release.path.to_date > "01-Oct-2018".to_date
    else
      true
    end
  end
end
