require 'rails_helper'

describe 'Event' do

  it 'should capture the current role and organization of a user on creation' do
    org = Fabricate(:organization)
    gene = Fabricate(:gene)
    user = Fabricate(:user, organization: org)

    e = Event.create(subject: gene, originating_user: user, action: 'test action')

    expect(e.user_role).to eq 'curator'
    expect(e.user_role).to eq user.role
    expect(e.organization).to eq org
    expect(e.organization_id).to eq org.id
  end

  it 'should not update the stored role or organization if they change on the user' do
    org = Fabricate(:organization)
    gene = Fabricate(:gene)
    user = Fabricate(:user, organization: org)

    e = Event.create(subject: gene, originating_user: user, action: 'test action')

    user.role = 'editor'
    user.organization = nil
    user.save

    e.action = 'different action'
    e.save

    expect(e.organization).to eq org
    expect(e.user_role).to eq 'curator'

  end
end
