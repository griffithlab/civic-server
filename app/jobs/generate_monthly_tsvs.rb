class GenerateMonthlyTsvs < GenerateTsvs
  def perform
    super
    self.class.set(wait_until: beginning_of_next_month).perform_later
    TsvRelease.where(path: release_path).first_or_create
  end

  private
  def release_path
    @dir_name ||= Date.today.beginning_of_month.strftime('%d-%b-%Y')
  end

  def beginning_of_next_month
    Date.today
      .beginning_of_month
      .next_month
      .midnight
  end

  def filename_prefix
    release_path
  end
end
