class Authorization < ActiveRecord::Base
  belongs_to :user

  def self.find_or_create_from_omniauth(auth_hash)
    if auth = where(provider: auth_hash['provider'], uid: auth_hash['uid']).first
      auth
    else
      new(provider: auth_hash['provider'], uid: auth_hash['uid'])
    end
  end
end
