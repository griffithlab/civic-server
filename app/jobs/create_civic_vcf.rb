class CreateCivicVcf < ActiveJob::Base
  def perform
    system("civicpy create-vcf --vcf-file-path #{vcf_path} --include-status accepted --include-status submitted")
    self.class.set(wait_until: Date.tomorrow.midnight).perform_later
  end

  private
  def vcf_path
    File.join(Rails.root, 'public', 'downloads', 'civic.vcf')
  end
end
