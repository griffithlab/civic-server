module UserAdaptors
  class Orcid
    def self.create_from_omniauth(auth_hash)
      User.new(orcid: auth_hash['uid']).tap do |user|
        fill_user_record_from_orcid(user)
      end
    end

    private
    def self.fill_user_record_from_orcid(user)
      api_client = OrcidApi.new(user.orcid)
      user.name = api_client.name
    end
  end
end

