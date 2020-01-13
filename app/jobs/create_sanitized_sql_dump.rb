class CreateSanitizedSqlDump < ApplicationJob
  def perform
    Database::CloneAndSanitize.run('civic_copy', filename)
  end

  private
  def filename
    basename = "civic-#{Date.today.beginning_of_month.strftime('%d-%b-%Y')}.sql"
    File.join(Rails.root, 'public', 'downloads', 'sql', basename)
  end
end