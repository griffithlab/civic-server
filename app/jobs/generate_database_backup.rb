class GenerateDatabaseBackup < ApplicationJob
  def perform
    create_database_dump
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
end
