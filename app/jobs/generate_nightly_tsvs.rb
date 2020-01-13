class GenerateNightlyTsvs < GenerateTsvs
  private
  def release_path
    'nightly'
  end

  def filename_prefix
    release_path
  end
end
