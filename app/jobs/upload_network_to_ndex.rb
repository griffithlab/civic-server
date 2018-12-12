class UploadNetworkToNdex < ActiveJob::Base
  def perform
    system("python3 #{script_path} #{ENV['NDEX_USERNAME']} #{ENV['NDEX_PASSWORD']} --server public.ndexbio.org --file #{tsv_path}  --template 4ce6075a-cd88-11e8-aaa6-0ac135e8bacf --type all")
    self.class.set(wait_until: Date.tomorrow.midnight).perform_later
  end

  def script_path
    File.join(Rails.root, 'misc_scripts', 'ndex_process_civic.py')
  end

  def tsv_path
    File.join(Rails.root, 'public', 'downloads', 'nightly', 'nightly-ClinicalEvidenceSummaries.tsv')
  end
end
