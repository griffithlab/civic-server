class CreateMonthlyCivicVcfs < CreateCivicVcfs
  private
  def vcf_path(description)
    File.join(Rails.root, 'public', 'downloads', date, "#{date}-civic_#{description}.vcf")
  end

  def date
    Date.today.beginning_of_month.strftime('%d-%b-%Y')
  end
end
