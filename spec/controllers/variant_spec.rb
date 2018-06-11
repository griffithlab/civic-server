require 'rails_helper'

describe VariantsController do
  it 'should index' do
    variant = Fabricate(:variant)
    evidence_item = Fabricate(:evidence_item, variant: variant)

    get :index

    result = JSON.parse(response.body)
    expect(result['records'].length).to eq 1
    expect(result['records'][0]['name']).to eq variant.name
  end

  it 'should variant_navigation' do
    gene = Fabricate(:gene)
    variant = Fabricate(:variant, gene: gene)

    get :variant_navigation, gene_id: gene.id

    result = JSON.parse(response.body)
    expect(result['variants'].length).to eq 1
    expect(result['variants'][0]['name']).to eq variant.name
  end

  it 'should variant_group_index' do
    variant = Fabricate(:variant)
    variant_group = Fabricate(:variant_group, variants: [variant])

    get :variant_group_index, variant_group_id: variant_group.id

    result = JSON.parse(response.body)
    expect(result['records'].length).to eq 1
    expect(result['records'][0]['name']).to eq variant.name
  end

  it 'should show' do
    variant = Fabricate(:variant)

    get :show, id: variant

    result = JSON.parse(response.body)
    expect(result['name']).to eq variant.name
  end

  it 'should destroy' do
    variant = Fabricate(:variant)
    user = Fabricate(:user, role: :admin)
    controller.sign_in(user)

    expect(Variant.count).to eq 1
    delete :destroy, id: variant
    expect(Variant.count).to eq 0
  end
end
