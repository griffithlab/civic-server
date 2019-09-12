drugs_to_delete = []
Drug.where(ncit_id: nil).each do |drug|
  uri = URI.parse('http://data.bioontology.org/search').tap do |u|
    u.query = URI.encode_www_form({ontologies: 'NCIT', q: drug.name, require_exact_match: true, apikey: ENV['BIOONTOLOGY_API_KEY']})
  end
  res = Net::HTTP.get_response(uri)
  raise StandardError.new("Request Failed!") unless res.code == '200'
  response = JSON.parse(res.body)
  if response['totalCount'] == 1
    match = response['collection'].first
  elsif response['totalCount'] > 1
    response['collection'].each do |r|
      if r['prefLabel'].downcase == drug.name.downcase
        match = r
        break
      end
    end
  else
    next
  end
  if match.present?
    name = Drug.capitalize_name(match['prefLabel'])
    ncit_id = match['@id'].sub('http://ncicb.nci.nih.gov/xml/owl/EVS/Thesaurus.owl#', '')
    if existing_drug = Drug.find_by(ncit_id: ncit_id)
      drug.evidence_items.each do |ei|
        ei.drugs << existing_drug
        ei.drugs.delete(drug)
      end
      drugs_to_delete << drug
    else
      drug.name = name
      drug.ncit_id = ncit_id
      drug.save
    end
  end
end

drugs_to_delete.each do |drug|
  drug.destroy
end
