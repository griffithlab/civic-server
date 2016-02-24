#Gene is arbitrary here, it could be any class that mixes in WithAudits
describe 'WithAudits' do
  it 'should add relation called "audits" and enable audit tracking' do
    gene = Fabricate(:gene)
    expect(gene.audits.size).to eq 1

    gene.name = 'new name'
    gene.save

    expect(gene.audits.size).to eq 2
  end
end
