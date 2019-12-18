class CreateCivicVcfs < ActiveJob::Base
  attr_reader :recurring

  after_perform do |job|
    job.reschedule if job.recurring
  end

  def perform(recurring = true)
    @recurring if recurring
    execute
  end

  def execute
    statuses.each do |description, status_list|
      cmd = "civicpy create-vcf --vcf-file-path #{vcf_path(description)}"
      status_list.each do |status|
        cmd += " --include-status #{status}"
      end
      system(cmd)
    end
  end

  def reschedule
    raise 'Implement in subclass!'
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
