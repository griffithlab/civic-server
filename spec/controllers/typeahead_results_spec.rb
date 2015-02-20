require 'rails_helper'

describe VariantsController do
  before(:each) do
    gene = Fabricate(:gene, name: 'ABC')
    gene1 = Fabricate(:gene, name: 'PAR')

    Fabricate(:variant, gene: gene, name: 'AMP')
    Fabricate(:variant, gene: gene1, name: 'POD')
  end

  it 'should return matches for matches in either gene or variant name' do
    get :typeahead_results, query: 'P'

    # 'P' matches the gene name in one and the variant name in the other
    result = response_json(response)
    expect(result['total']).to eq 2
  end

  it 'should order the results descending by number of character matches' do

    get :typeahead_results, query: 'A'
    result = response_json(response)
    expect(result['result'].first['entrez_gene']).to eq 'ABC'
    expect(result['result'].last['entrez_gene']).to eq 'PAR'

    get :typeahead_results, query: 'P'
    result = response_json(response)
    expect(result['result'].first['entrez_gene']).to eq 'PAR'
    expect(result['result'].last['entrez_gene']).to eq 'ABC'
  end

  it 'should allow for limiting' do
    get :typeahead_results, query: 'P', limit: 1

    result = response_json(response)
    expect(result['result'].size).to eq 1
  end

  it 'should be case insensitive' do
    get :typeahead_results, query: 'p'

    result = response_json(response)
    expect(result['total']).to eq 2
  end

  def response_json(response)
    JSON.parse(response.body)
  end
end

