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
    path = "/downloads/#{release.path}/#{release.path}-#{file_name}"
    if File.exist? File.join(Rails.root, 'public', path)
      path
    else
      nil
    end
  end

  def file_names
    GenerateTsvs.new
      .tsvs_to_generate
      .map { |f| download_path_for_file(f.file_name) } +
    CreateCivicVcfs.new
      .statuses
      .map{ |description, status_list| download_path_for_file(CreateCivicVcfs.new.vcf_filename(description)) }
  end

end
