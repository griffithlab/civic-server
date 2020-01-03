class CreateCivicpyCachePkl < ApplicationJob

  def perform
    system("civicpy update --hard --cache-save-path #{civicpy_cache_file_location}")
  end

  private
  def civicpy_cache_file_location
    raise 'Implement in subclass!'
  end
end
