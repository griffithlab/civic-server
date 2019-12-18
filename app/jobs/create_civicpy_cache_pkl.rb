class CreateCivicpyCachePkl < ActiveJob::Base
  attr_reader :recurring

  after_perform do |job|
    job.reschedule if job.recurring
  end

  def perform(recurring = true)
    @recurring if recurring
    execute
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
