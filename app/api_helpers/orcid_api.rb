class OrcidApi
  include ApiHelpers

  def initialize(orcid)
    @orcid = orcid
  end

  def name
    details = user_data['orcid-profile']['orcid-bio']['personal-details']
    [
      details['given-names']['value'],
      details['family-name']['value'],
    ].join(' ')
  end

  private
  def user_data
    @user_data ||= get_json_response(url, {}, headers)
  end

  def url
    "http://pub.orcid.org/v1.2/#{@orcid}/orcid-bio"
  end

  def headers
    {
      'Accept' => 'application/orcid+json'
    }
  end
end
