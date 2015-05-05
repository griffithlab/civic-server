require 'spec_helper'

describe 'finding superseded changes' do
  it 'should find conflicting changes and mark them as superseded' do
    gene = Fabricate(:gene)
    user = Fabricate(:user)

    gene.name = 'new name'
    first_change = gene.suggest_change!(user)
    gene.name = 'other new name'
    second_change = gene.suggest_change!(user)
    first_change.apply!

    expect(Delayed::Worker.new.work_off).to eq [1,0]
    second_change.reload
    expect(gene.name).to eq 'new name'
    expect(first_change.status).to eq 'applied'
    expect(second_change.status).to eq 'superseded'
  end

  it 'should only look at changes that have not been applied' do
    gene = Fabricate(:gene)
    user = Fabricate(:user)

    gene.name = 'new name'
    first_change = gene.suggest_change!(user)
    gene.name = 'other new name'
    second_change = gene.suggest_change!(user)
    second_change.status = 'applied'
    second_change.save
    first_change.apply!

    expect(Delayed::Worker.new.work_off).to eq [1,0]
    second_change.reload
    expect(gene.name).to eq 'new name'
    expect(first_change.status).to eq 'applied'
    expect(second_change.status).to eq 'applied'
  end

  it 'should only think a change is conflicting when the fields are the same' do
    gene = Fabricate(:gene)
    user = Fabricate(:user)

    gene.name = 'new name'
    first_change = gene.suggest_change!(user)
    gene.reload
    gene.description = 'new description'
    second_change = gene.suggest_change!(user)
    first_change.apply!

    expect(Delayed::Worker.new.work_off).to eq [1,0]
    second_change.reload
    expect(gene.name).to eq 'new name'
    expect(first_change.status).to eq 'applied'
    expect(second_change.status).to eq 'new'
  end
end
