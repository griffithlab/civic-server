class CreateCivicpyCachePkl < ActiveJob::Base
  def perform
    system("civicpy update --hard --cache-save-path #{civicpy_cache_file_location} ")
    self.class.set(wait_until: Date.tomorrow.midnight).perform_later
  end

  private
  def civicpy_cache_file_location
    File.join(Rails.root, 'public', 'downloads', 'civicpy_cache.pkl')
  end
end
