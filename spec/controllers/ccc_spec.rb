require 'rails_helper'

describe GenesController do
  it 'should lookup by entrez_id or id' do
    gene = Fabricate(:gene)

    get :entrez_show, entrez_id: gene.entrez_id

    result = JSON.parse(response.body)
    expect(result['id']).to eq gene.id
    expect(result['entrez_id']).to eq gene.entrez_id


    get :show, id: gene.id

    result = JSON.parse(response.body)
    expect(result['id']).to eq gene.id
    expect(result['entrez_id']).to eq gene.entrez_id

  end
end




describe VariantsController do
  it 'should lookup by entrez_id or id' do
    gene = Fabricate(:gene)
    gene.variants << Fabricate(:variant)

    get :entrez_gene_index, entrez_id: gene.entrez_id

    result = JSON.parse(response.body)
    expect(result.length).to eq gene.variants.length
    expect(result[0]['id']).to eq gene.variants[0]['id']


    get :gene_index, gene_id: gene.id

    result = JSON.parse(response.body)
    expect(result.length).to eq gene.variants.length
    expect(result[0]['id']).to eq gene.variants[0]['id']

  end
end