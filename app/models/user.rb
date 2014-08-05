class User < ActiveRecord::Base
  has_many :authorizations

  def self.create_from_omniauth(auth_hash, authorization)
    User.create(
      name: auth_hash['info']['name'],
      email: auth_hash['info']['email'],
      nickname: auth_hash['info']['nickname'],
      authorizations: [authorization]
    )
  end
end
