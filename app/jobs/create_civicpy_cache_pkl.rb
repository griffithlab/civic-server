require 'open3'

class CreateCivicpyCachePkl < ApplicationJob

  def perform
    stdout, stderr, status = Open3.capture3("civicpy", "update", "--hard", "--cache-save-path", civicpy_cache_file_location)
    if not status.success?
      raise stderr
    end
  end

  private
  def civicpy_cache_file_location
    raise 'Implement in subclass!'
  end
end
