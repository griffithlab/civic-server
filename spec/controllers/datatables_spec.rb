require 'rails_helper'

describe EvidenceItemsController do
  it 'should return an accepted evidence item' do
    evidence_item = Fabricate(:evidence_item, status: 'accepted')

    get :datatable

    result = JSON.parse(response.body)
    expect(result['result'].length).to eq 1
    expect(result['result'][0]['id']).to eq evidence_item.id
  end

  it 'should filter on evidence_level' do
    evidence_item_A = Fabricate(:evidence_item, status: 'accepted', evidence_level: 'A')
    evidence_item_B = Fabricate(:evidence_item, status: 'accepted', evidence_level: 'B')

    get :datatable, params: { filter: {evidence_level: 'A'} }

    result = JSON.parse(response.body)
    expect(result['result'].length).to eq 1
    expect(result['result'][0]['id']).to eq evidence_item_A.id
  end

  it 'should filter on evidence_type' do
    evidence_item_A = Fabricate(:evidence_item, status: 'accepted', evidence_type: 'Diagnostic')
    evidence_item_B = Fabricate(:evidence_item, status: 'accepted', evidence_type: 'Prognostic')

    get :datatable, params: { filter: {evidence_type: 'Diagnostic'} }

    result = JSON.parse(response.body)
    expect(result['result'].length).to eq 1
    expect(result['result'][0]['id']).to eq evidence_item_A.id
  end

  it 'should filter on evidence_direction' do
    evidence_item_A = Fabricate(:evidence_item, status: 'accepted', evidence_direction: 'Supports')
    evidence_item_B = Fabricate(:evidence_item, status: 'accepted', evidence_direction: 'Does Not Support')

    get :datatable, params: { filter: {evidence_direction: 'Supports'} }

    result = JSON.parse(response.body)
    expect(result['result'].length).to eq 1
    expect(result['result'][0]['id']).to eq evidence_item_A.id
  end

  it 'should filter on clinical_significance' do
    evidence_item_A = Fabricate(:evidence_item, status: 'accepted', clinical_significance: 'Resistance')
    evidence_item_B = Fabricate(:evidence_item, status: 'accepted', clinical_significance: 'Negative')

    get :datatable, params: { filter: {clinical_significance: 'Resistance'} }

    result = JSON.parse(response.body)
    expect(result['result'].length).to eq 1
    expect(result['result'][0]['id']).to eq evidence_item_A.id
  end

  it 'should filter on variant_origin' do
    evidence_item_A = Fabricate(:evidence_item, status: 'accepted', variant_origin: 'Somatic')
    evidence_item_B = Fabricate(:evidence_item, status: 'accepted', variant_origin: 'Rare Germline')

    get :datatable, params: { filter: {variant_origin: 'Somatic'} }

    result = JSON.parse(response.body)
    expect(result['result'].length).to eq 1
    expect(result['result'][0]['id']).to eq evidence_item_A.id
  end

  it 'should filter on rating' do
    evidence_item_A = Fabricate(:evidence_item, status: 'accepted', rating: '1')
    evidence_item_B = Fabricate(:evidence_item, status: 'accepted',rating: '2')

    get :datatable, params: { filter: {rating: '1'} }

    result = JSON.parse(response.body)
    expect(result['result'].length).to eq 1
    expect(result['result'][0]['id']).to eq evidence_item_A.id
  end
end

describe GenesController do
  it 'should return a gene' do
    gene = Fabricate(:gene)
    variant = Fabricate(:variant, :gene => gene)
    Fabricate(:evidence_item, variant: variant, status: 'accepted')

    get :datatable

    result = JSON.parse(response.body)
    expect(result['result'].length).to eq 1
    expect(result['result'][0]['id']).to eq gene.id
  end
end

describe VariantsController do
  it 'should return a variant' do
    variant = Fabricate(:variant)
    evidence_item = Fabricate(:evidence_item, variant: variant, status: 'accepted')

    get :datatable

    result = JSON.parse(response.body)
    expect(result['result'].length).to eq 1
    expect(result['result'][0]['variant_id']).to eq variant.id
  end
end
