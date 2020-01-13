class CreateNightlyCivicVcfs < CreateCivicVcfs
  private
  def vcf_path(description)
    File.join(Rails.root, 'public', 'downloads', 'nightly', "nightly-civic_#{description}.vcf")
  end
end
