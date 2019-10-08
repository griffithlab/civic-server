class CreateMonthlyCivicVcfs < CreateCivicVcfs
  def reschedule
    self.class.set(wait_until: beginning_of_next_month).perform_later
  end

  private
  def vcf_path(description)
    File.join(Rails.root, 'public', 'downloads', date, "#{date}-civic_#{description}.vcf")
  end

  def date
    Date.today.beginning_of_month.strftime('%d-%b-%Y')
  end

  def beginning_of_next_month
    Date.today
      .beginning_of_month
      .next_month
      .midnight
  end
end
