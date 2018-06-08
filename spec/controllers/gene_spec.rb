require 'rails_helper'

describe GenesController do
  it 'should index' do
    gene = Fabricate(:gene)
    variant = Fabricate(:variant, :gene => gene)
    Fabricate(:evidence_item, variant: variant, status: 'accepted')

    get :index

    result = JSON.parse(response.body)
    expect(result['records'].length).to eq 1
    expect(result['records'][0]['name']).to eq gene.name

    get :index, :detailed => false

    result = JSON.parse(response.body)
    expect(result.length).to eq 1
    expect(result[0]['name']).to eq gene.name
  end

  it 'should show' do
    gene = Fabricate(:gene, name: 'TEST')

    get :show, id: gene.id
    result = JSON.parse(response.body)
    expect(result['name']).to eq gene.name

    get :show, identifier_type: 'entrez_id', id: gene.entrez_id
    result = JSON.parse(response.body)
    expect(result['name']).to eq gene.name

    get :show, identifier_type: 'entrez_symbol', id: gene.name
    result = JSON.parse(response.body)
    expect(result['name']).to eq gene.name

    get :show, id: gene.id, detailed: false
    result = JSON.parse(response.body)
    expect(result['name']).to eq gene.name
  end

  it 'should show multiple ids' do
    gene = Fabricate(:gene, name: 'TEST')
    gene2 = Fabricate(:gene)

    get :show, id: [gene.id, gene2.id].join(',')
    result = JSON.parse(response.body)
    expect(result.length).to eq 2
    expect(result[0]['name']).to eq gene.name
    expect(result[1]['name']).to eq gene2.name
  end

  it 'should destroy' do
    gene = Fabricate(:gene)
    user = Fabricate(:user, role: :admin)
    controller.sign_in(user)

    expect(Gene.count).to eq 1
    delete :destroy, id: gene
    expect(Gene.count).to eq 0
  end

  it 'should datatable' do
    gene = Fabricate(:gene)
    variant = Fabricate(:variant, :gene => gene)
    Fabricate(:evidence_item, variant: variant, status: 'accepted')

    get :datatable

    result = JSON.parse(response.body)
    expect(result['result'].length).to eq 1
    expect(result['result'][0]['id']).to eq gene.id
  end

  it 'should existence' do
    gene = Fabricate(:gene)

    post :existence, entrez_id: gene.entrez_id
    result = JSON.parse(response.body)
    expect(response.status).to eq 200
    expect(result['name']).to eq gene.name

    post :existence, entrez_id: '7428'
    result = JSON.parse(response.body)
    expect(response.status).to eq 200
    expect(result['name']).to eq 'VHL'

    post :existence, entrez_id: 'not_a_real_id'
    result = JSON.parse(response.body)
    expect(response.status).to eq 404
  end

  it 'local_name_suggestion' do
    gene = Fabricate(:gene)
    variant = Fabricate(:variant, :gene => gene)

    post :local_name_suggestion, q: gene.name

    result = JSON.parse(response.body)
    expect(result.length).to eq 1
    expect(result[0]['name']).to eq gene.name
  end
end
