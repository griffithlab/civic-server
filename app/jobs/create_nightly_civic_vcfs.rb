class CreateNightlyCivicVcfs < CreateCivicVcfs
  def reschedule
    self.class.set(wait_until: Date.tomorrow.midnight).perform_later
  end

  private
  def vcf_path(description)
    File.join(Rails.root, 'public', 'downloads', 'nightly', "nightly-civic_#{description}.vcf")
  end
end
