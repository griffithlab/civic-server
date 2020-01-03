class CreateMonthlyCivicpyCachePkl < CreateCivicpyCachePkl
  private
  def civicpy_cache_file_location
    File.join(Rails.root, 'public', 'downloads', date, "#{date}-civicpy_cache.pkl")
  end

  def date
    Date.today.beginning_of_month.strftime('%d-%b-%Y')
  end
end
