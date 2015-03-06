module UserAdaptors
  class Google
    def self.create_from_omniauth(auth_hash)
      info_hash = auth_hash['info']
      User.new(name: info_hash['name'], email: info_hash['email'])
    end
  end
end
