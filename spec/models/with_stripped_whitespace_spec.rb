require 'rails_helper'


describe 'WithStrippedWhitespace' do
  it 'should define a new class method on the model its mixed into' do
    expect(EvidenceItem.methods.include?(:columns_with_stripped_whitespace)).to be(true)
  end

  it 'should strip internal duplicate spaces and trailing spaces' do
    e = Fabricate(:evidence_item)

    e.description = '  foo    bar  '
    e.save

    expect(e.description).to eq('foo bar')
  end

  it 'should work with suggested changes' do
    ei = Fabricate(:evidence_item)
    user = Fabricate(:user)
    applying_user = Fabricate(:user)
    org = Fabricate(:organization)

    ei.description = ' foo   bar  '
    change = ei.suggest_change!(user, {}, {})
    change.apply(applying_user, org, false)
    ei.reload

    expect(ei.description).to eq('foo bar')
  end

  it 'should strip newlines and tabs' do
    e = Fabricate(:evidence_item)

    e.description = "foo\tbar\nbaz"
    e.save

    expect(e.description).to eq('foo bar baz')
  end

  it 'should work even with aliased columns' do
    e = Fabricate(:evidence_item)

    e.text = 'foo    bar'
    e.save

    expect(e.description).to eq('foo bar')
  end
end
