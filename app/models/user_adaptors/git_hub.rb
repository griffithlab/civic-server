module UserAdaptors
  class GitHub
    def self.create_from_omniauth(auth_hash)
      info = auth_hash['info']
      User.new(name: info['name'], email: info['email'], username: info['nickname'])
    end
  end
end
