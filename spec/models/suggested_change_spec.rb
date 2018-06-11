require 'rails_helper'

describe SuggestedChange do
  before(:each) do
    @gene = Fabricate(:gene)
    @user = Fabricate(:user)

    @old_value = @gene.name
    @new_value = 'new name'

    @gene.name = @new_value
    @gene.suggest_change!(@user, {}, {})
  end

  it 'should update the object in question and mark the status of the suggested change to applied' do
    changeset = @gene.open_changes.first
    expect(@gene.name).to eq(@old_value)
    changeset.apply(@user, false)
    @gene.reload

    expect(@gene.name).to eq(@new_value)
    expect(changeset.status).to eq('applied')
    expect(@gene.open_changes.size).to eq(0)
  end

  it 'should apply a change only if the expected current value matches in order to avoid conflicts' do
    changeset = @gene.open_changes.first
    @gene.name = 'another value'
    @gene.save
    result = changeset.apply(@user, false)
    expect(result.succeeded?).to be(false)
  end

  it 'should allow conflicted merges if the force parameter is supplied' do
    changeset = @gene.open_changes.first
    conflicting_value = 'another value'
    @gene.name = conflicting_value
    @gene.save

    changeset.apply(@user, true)
    @gene.reload
    expect(@gene.name).to eq(@new_value)
  end

  it 'should generate an acceptance event' do
    changeset = @gene.open_changes.first
    changeset.apply(@user, false)

    events = Event.where(
      action: 'change accepted',
      originating_user: @user,
      subject: changeset.moderated
    )

    expect(events.size).to eq(1)
    expect(events.first.state_params['suggested_change']['id']).to eq(changeset.id)
  end
end
