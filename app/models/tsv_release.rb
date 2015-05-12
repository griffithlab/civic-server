class TsvRelease < ActiveRecord::Base
  def self.downloads_path
    File.join(Rails.root, 'public', 'downloads')
  end

  def self.nightly
    NightlyRelease.new('nightly')
  end

  NightlyRelease = Struct.new(:path)
end
