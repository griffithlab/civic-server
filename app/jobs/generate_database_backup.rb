class GenerateDatabaseBackup < ActiveJob::Base
  def perform(recurring = true)
    create_database_dump
    if recurring
      GenerateDatabaseBackup.set(wait_until: next_week).perform_later(true)
    end
  end

  private
  def create_database_dump
    Database::Dump.run(filename)
  end

  def filename
    File.join(ENV['HOME'], Date.today.strftime("backup_%m_%d_%y.sql"))
  end

  def next_week
    Date.today
      .beginning_of_week
      .next_week
      .midnight
  end
end
