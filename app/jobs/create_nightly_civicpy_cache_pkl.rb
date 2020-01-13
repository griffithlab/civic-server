class CreateNightlyCivicpyCachePkl < CreateCivicpyCachePkl

  private
  def civicpy_cache_file_location
    File.join(Rails.root, 'public', 'downloads', 'nightly', 'nightly-civicpy_cache.pkl')
  end
end
