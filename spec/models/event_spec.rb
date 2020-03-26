require 'rails_helper'

describe 'Event' do

  it 'should capture the current role of a user and the chosen organization on creation' do
    org = Fabricate(:organization)
    gene = Fabricate(:gene)
    user = Fabricate(:user)

    e = Event.create(subject: gene, originating_user: user, action: 'test action', organization: org)

    expect(e.user_role).to eq 'curator'
    expect(e.user_role).to eq user.role
    expect(e.organization).to eq org
    expect(e.organization_id).to eq org.id
  end

  it 'should not update the stored role if they change on the user' do
    org = Fabricate(:organization)
    gene = Fabricate(:gene)
    user = Fabricate(:user)

    e = Event.create(subject: gene, originating_user: user, action: 'test action', organization: org)

    user.role = 'editor'
    user.save

    e.action = 'different action'
    e.save

    expect(e.organization).to eq org
    expect(e.user_role).to eq 'curator'

  end
end
