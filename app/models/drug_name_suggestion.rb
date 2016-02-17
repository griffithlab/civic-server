class DrugNameSuggestion
  def self.suggestions_for_name(name)
    merge_suggestions(
      get_local_suggestions(name),
      get_pubchem_suggestions(name)
    )
  end

  def self.get_pubchem_suggestions(name)
    Rails.cache.fetch(cache_key(name), expires_in: 24.hours) do
      resp_body = Scrapers::Util.make_get_request(pubmed_url_for_query(name))
      json = JSON.parse(resp_body)
      json['autocp_array'].map do |suggestion|
        Drug.capitalize_name(suggestion)
      end
    end
  end

  def self.get_local_suggestions(name)
    Drug.where('name ILIKE :name', name: "%#{name}%")
      .limit(12)
      .pluck(:name)
  end

  def self.merge_suggestions(local_suggestions, remote_suggestions)
    (remote_suggestions | local_suggestions).take(12)
  end

  def self.pubmed_url_for_query(query)
    "https://pubchem.ncbi.nlm.nih.gov/pcautocp/pcautocp.cgi?dict=pc_compoundnames&q=#{query}&n=12"
  end

  def self.cache_key(name)
    "pubmed_autocomplete_#{name}"
  end
end
