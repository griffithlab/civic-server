class OrcidApi
  include ApiHelpers

  def initialize(orcid)
    @orcid = orcid
  end

  def name
    details = user_data['person']['name']
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
    "https://pub.orcid.org/v2.1/#{@orcid}/record"
  end

  def headers
    {
      'Accept' => 'application/orcid+json'
    }
  end
end
