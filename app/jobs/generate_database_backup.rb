class GenerateDatabaseBackup < ActiveJob::Base

  attr_reader :recurring

  after_perform do |job|
    job.reschedule if job.recurring
  end

  def perform(recurring = true)
    @recurring = recurring
    create_database_dump
  end

  def reschedule
    self.class.set(wait_until: next_week).perform_later(true)
  end

  private
  def create_database_dump
    Database::Dump.run(filename)
  end

  def filename
    File.join(homedir, Date.today.strftime("backup_%m_%d_%y.sql"))
  end

  def homedir
    ENV['HOME'] || File.join('/home', ENV['USER'])
  end

  def next_week
    Date.today
      .beginning_of_week
      .next_week
      .midnight
  end
end
