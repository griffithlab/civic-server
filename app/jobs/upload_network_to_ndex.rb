class UploadNetworkToNdex < ApplicationJob
  def perform
    system("python3 #{script_path} #{ndex_username} #{ndex_password} --server public.ndexbio.org --file #{tsv_path}  --template 4ce6075a-cd88-11e8-aaa6-0ac135e8bacf --type all")
  end

  def script_path
    File.join(Rails.root, 'misc_scripts', 'ndex_process_civic.py')
  end

  def tsv_path
    File.join(Rails.root, 'public', 'downloads', 'nightly', 'nightly-ClinicalEvidenceSummaries.tsv')
  end

  private
  def ndex_username
    ENV['NDEX_USERNAME'] || Rails.application.secrets.ndex_username
  end

  def ndex_password
    ENV['NDEX_PASSWORD'] || Rails.application.secrets.ndex_password
  end
end
