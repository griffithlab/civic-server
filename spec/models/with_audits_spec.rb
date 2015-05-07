#Gene is arbitrary here, it could be any class that mixes in WithAudits
describe 'WithAudits' do
  it 'should add relation called "audits" and enable audit tracking' do
    gene = Fabricate(:gene)
    expect(gene.audits.size).to eq 1

    gene.name = 'new name'
    gene.save

    expect(gene.audits.size).to eq 2
  end

  it 'should add a relation called "creation event" and it should retrieve the creation event' do
    gene = Fabricate(:gene)
    creation_event = gene.creation_event

    expect(creation_event).to_not be_nil
    expect(creation_event.action).to eq 'create'
  end

  it 'should add a relation called "creator" which should get the user of the creation event' do
    user = Fabricate(:user)
    gene = nil
    Audited.audit_class.as_user(user) do
      gene = Fabricate(:gene)
    end
    creator = gene.creator

    expect(creator).to_not be_nil
    expect(creator).to eq(user)
  end
end
