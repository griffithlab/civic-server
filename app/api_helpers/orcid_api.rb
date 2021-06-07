class OrcidApi
  include ApiHelpers

  def initialize(orcid)
    @orcid = orcid
  end

  def name
    name = [
      user_data.dig('person', 'name', 'given-names', 'value'),
      user_data.dig('person', 'name', 'family-name', 'value')
    ].join(' ')

    if name.present?
      name
    else
      orcid
    end
  end

  def orcid
     user_data['orcid-identifier']['path']
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
