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

  it 'should destroy' do
    gene = Fabricate(:gene)
    user = Fabricate(:user, role: :admin)
    controller.sign_in(user)

    expect(Gene.count).to eq 1
    delete :destroy, id: gene
    expect(Gene.count).to eq 0
  end
end
