class CreateCivicpyCachePkl < ActiveJob::Base
  def perform
    execute
    reschedule
  end

  def execute
    system("civicpy update --hard --cache-save-path #{civicpy_cache_file_location}")
  end

  def reschedule
    raise 'Implement in subclass!'
  end

  private
  def civicpy_cache_file_location
    raise 'Implement in subclass!'
  end
end
