require 'open3'

class CreateCivicVcfs < ApplicationJob
  def perform
    statuses.each do |description, status_list|
      cmd = ["civicpy", "create-vcf", "--vcf-file-path", vcf_path(description)]
      status_list.each do |status|
        cmd.concat(["--include-status", status])
      end
      stdout, stderr, process_status = Open3.capture3(*cmd)
      if not process_status.success?
        raise stderr
      end
    end
  end

  private
  def vcf_path(description)
    raise 'Implement in subclass!'
  end

  def statuses
    {
      'accepted' => ['accepted'],
      'accepted_and_submitted' => ['accepted', 'submitted'],
    }
  end
end
