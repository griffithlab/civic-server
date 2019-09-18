class CreateCivicpyCachePkl < ActiveJob::Base
  def perform
    system("CIVICPY_CACHE_FILE=#{civicpy_cache_file_location} python3 #{script_path}")
    self.class.set(wait_until: Date.tomorrow.midnight).perform_later
  end

  def script_path
    File.join(Rails.root, 'misc_scripts', 'create_civicpy_cache_pkl.py')
  end

  private
  def civicpy_cache_file_location
    File.join(Rails.root, 'public', 'downloads', 'civicpy_cache.pkl')
  end
end
