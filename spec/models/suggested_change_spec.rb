#Gene is arbitrary here, it could be any class using the Moderated concern
describe SuggestedChange do
  before(:each) do
    @gene = Fabricate(:gene)
    @user = Fabricate(:user)
    
    @old_value = @gene.name
    @new_value = 'new name'

    @gene.name = @new_value
    @gene.suggest_change!(@user)
  end

  it 'should update the object in question and mark the status of the suggested change to applied' do
    changeset = @gene.open_changes.first
    expect(@gene.name).to eq(@old_value)
    gene = changeset.apply!

    expect(gene.name).to eq(@new_value)
    expect(changeset.status).to eq('applied')
    expect(gene.open_changes.size).to eq(0)
  end

  it 'should apply a change only if the expected current value matches in order to avoid conflicts' do
    changeset = @gene.open_changes.first
    @gene.name = 'another value'
    @gene.save
    expect { changeset.apply! }.to raise_error(ChangeApplicationConflictError)
  end

  it 'should allow conflicted merges if the force parameter is supplied' do
    changeset = @gene.open_changes.first
    conflicting_value = 'another value'
    @gene.name = conflicting_value
    @gene.save

    gene = changeset.apply!(true)
    expect(gene.name).to eq(@new_value)
  end

  it 'should record the correct users as the originator of the change and the applier of the change' do
    changeset = @gene.open_changes.first
    changeset.apply!

    #this should be the user who suggested the change which is the current user - who is nil
    expect(changeset.audits.last.user).to be_nil
    #this should be the current user who accepted the change -- which in test mode is nii
    expect(@gene.audits.last.user).to be_nil
  end
end
