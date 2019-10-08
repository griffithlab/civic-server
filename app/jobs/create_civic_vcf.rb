class CreateCivicVcf < ActiveJob::Base
  def perform
    statuses.each do |description, status_list|
      binding.pry
      cmd = "civicpy create-vcf --vcf-file-path #{vcf_path(description)}"
      status_list.each do |status|
        cmd += " --include-status #{status}"
      end
      system(cmd)
      self.class.set(wait_until: Date.tomorrow.midnight).perform_later
    end
  end

  private
  def vcf_path(description)
    File.join(Rails.root, 'public', 'downloads', "civic_#{description}.vcf")
  end

  def statuses
    {
      'accepted' => ['accepted'],
      'accepted_and_submitted' => ['accepted', 'submitted'],
    }
  end
end
