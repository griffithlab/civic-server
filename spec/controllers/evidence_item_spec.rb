require 'rails_helper'

describe EvidenceItemsController do
  it 'should index' do
    evidence_item = Fabricate(:evidence_item, status: 'accepted')

    get :index

    result = JSON.parse(response.body)
    expect(result['records'].length).to eq 1
    expect(result['records'][0]['name']).to eq evidence_item.name
  end

  it 'should variant_index' do
    variant = Fabricate(:variant)
    evidence_item = Fabricate(:evidence_item, variant: variant)

    get :variant_index, variant_id: variant.id

    result = JSON.parse(response.body)
    expect(result['records'].length).to eq 1
    expect(result['records'][0]['name']).to eq evidence_item.name
  end

  it 'should variant_group_index' do
    variant = Fabricate(:variant)
    evidence_item = Fabricate(:evidence_item, variant: variant)
    variant_group = Fabricate(:variant_group, variants: [variant])

    get :variant_group_index, variant_group_id: variant_group.id

    result = JSON.parse(response.body)
    expect(result['records'].length).to eq 1
    expect(result['records'][0]['name']).to eq evidence_item.name
  end

  it 'should destroy' do
    evidence_item = Fabricate(:evidence_item)
    user = Fabricate(:user, role: :admin)
    controller.sign_in(user)

    expect(EvidenceItem.count).to eq 1
    delete :destroy, id: evidence_item
    expect(EvidenceItem.count).to eq 0
  end
end
