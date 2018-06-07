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

  it 'should return a list of all entrez_ids and gene_ids' do
    gene = Fabricate(:gene)

    get :entrez_index 

    result = JSON.parse(response.body)
    expect(result.length).to eq 1
    expect(result[0][0]).to eq gene.entrez_id
    expect(result[0][1]).to eq gene.id

  end
end

describe VariantsController do
  it 'should lookup by entrez_id or id' do
    gene = Fabricate(:gene)
    variant = Fabricate(:variant)
    gene.variants << variant
    variant.evidence_items << Fabricate(:evidence_item)

    get :entrez_gene_index, entrez_id: gene.entrez_id

    result = JSON.parse(response.body)
    expect(result['records'].length).to eq gene.variants.length
    expect(result['records'][0]['id']).to eq gene.variants[0]['id']

    get :gene_index, gene_id: gene.id

    result = JSON.parse(response.body)
    expect(result['records'].length).to eq gene.variants.length
    expect(result['records'][0]['id']).to eq gene.variants[0]['id']
  end
end

describe EvidenceItemsController do
  it 'should return a list of all entrez_ids and gene_ids' do
    evidence_item = Fabricate(:evidence_item)

    get :variant_hgvs_index

    result = JSON.parse(response.body)
    expect(result.length).to eq 1
    expect(result[0][0]).to eq evidence_item.variant_hgvs
    expect(result[0][1]).to eq evidence_item.variant.id
    expect(result[0][2]).to eq evidence_item.id
  end
end
