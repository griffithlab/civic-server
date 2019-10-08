class CreateCivicVcf < ActiveJob::Base
  def perform
    system("python3 #{script_path} #{vcf_path}")
    self.class.set(wait_until: Date.tomorrow.midnight).perform_later
  end

  def script_path
    File.join(Rails.root, 'misc_scripts', 'create_civic_vcf.py')
  end

  private
  def civicpy_cache_file_location
    File.join(Rails.root, 'public', 'downloads', 'civic.vcf')
  end
end
