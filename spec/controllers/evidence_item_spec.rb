require 'rails_helper'

describe EvidenceItemsController do
  it 'should index' do
    evidence_item = Fabricate(:evidence_item, status: 'accepted')

    get :index, params: { status: 'accepted' }

    result = JSON.parse(response.body)
    expect(result['records'].length).to eq 1
    expect(result['records'][0]['name']).to eq evidence_item.name
  end

  it 'should variant_index' do
    variant = Fabricate(:variant)
    evidence_item = Fabricate(:evidence_item, variant: variant)

    get :variant_index, params: { variant_id: variant.id }

    result = JSON.parse(response.body)
    expect(result['records'].length).to eq 1
    expect(result['records'][0]['name']).to eq evidence_item.name
  end

  it 'should variant_group_index' do
    variant = Fabricate(:variant)
    evidence_item = Fabricate(:evidence_item, variant: variant)
    variant_group = Fabricate(:variant_group, variants: [variant])

    get :variant_group_index, params: { variant_group_id: variant_group.id }

    result = JSON.parse(response.body)
    expect(result['records'].length).to eq 1
    expect(result['records'][0]['name']).to eq evidence_item.name
  end

  it 'should accept' do
    evidence_item = Fabricate(:evidence_item, status: 'submitted', submitter: Fabricate(:user))
    org = Fabricate(:organization)
    user = Fabricate(:user, role: :admin, organizations: [org])
    controller.sign_in(user)

    post :accept, params: { evidence_item_id: evidence_item.id, organization: { id: org.id } }
    evidence_item.reload

    expect(evidence_item.status).to eq 'accepted'
  end

  it 'should reject' do
    evidence_item = Fabricate(:evidence_item, status: 'submitted', submitter: Fabricate(:user))
    evidence_item = Fabricate(:evidence_item, status: 'submitted')
    user = Fabricate(:user, role: :admin)
    org = Fabricate(:organization)
    controller.sign_in(user)

    post :reject, params: { evidence_item_id: evidence_item.id, organization: { id: org.id } }
    evidence_item.reload

    expect(evidence_item.status).to eq 'rejected'
  end

  it 'should show' do
    evidence_item = Fabricate(:evidence_item, status: 'accepted')

    get :show, params: { id: evidence_item }

    result = JSON.parse(response.body)
    expect(result['name']).to eq evidence_item.name
  end

  it 'should destroy' do
    evidence_item = Fabricate(:evidence_item)
    user = Fabricate(:user, role: :admin)
    controller.sign_in(user)

    expect(EvidenceItem.count).to eq 1
    delete :destroy, params: { id: evidence_item }
    expect(EvidenceItem.count).to eq 0
  end
end
