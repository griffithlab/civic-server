require 'rails_helper'

describe Organization do
  before(:each) do

    @parent_org = Organization.create(name: 'parent')
    @first_child = Organization.create(name: 'first child', parent: @parent_org)
  end

  it 'should allow organizations to have parents' do
    expect(@parent_org.groups.to_a).to eq [@first_child]
    expect(@first_child.parent).to eq @parent_org
  end

  it 'should only allow one level of nesting' do
    second_child = Organization.create(name: 'foo', parent: @first_child)

    expect(second_child.valid?).to be false
    expect(second_child.errors[:parent]).to be_truthy
  end

  it 'should correctly get all members of subteams' do
    user1 = Fabricate(:user)
    user2 = Fabricate(:user)
    user3 = Fabricate(:user)

    user1.organization = @parent_org
    user1.save

    user2.organization = @first_child
    user2.save

    user3.organization = @first_child
    user3.save

    expect(@parent_org.all_users).to contain_exactly(user1, user2, user3)
  end
end
