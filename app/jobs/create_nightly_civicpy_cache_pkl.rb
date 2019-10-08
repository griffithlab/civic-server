class CreateNightlyCivicpyCachePkl < CreateCivicpyCachePkl
  def reschedule
    self.class.set(wait_until: Date.tomorrow.midnight).perform_later
  end

  private
  def civicpy_cache_file_location
    File.join(Rails.root, 'public', 'downloads', 'nightly', 'nightly-civicpy_cache.pkl')
  end
end
