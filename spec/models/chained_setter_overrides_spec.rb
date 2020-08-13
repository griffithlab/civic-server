require 'rails_helper'

#Ex: Variant stop should both remove commas before casting
#and save empty values as null
describe 'SetterOverrideMixin' do

  it 'should make whitespace or empty string NULL before saving to the db' do
    variant = Fabricate(:variant)

    variant.start = ""
    variant.save
    expect(variant.start).to be_nil

    variant.start = "    "
    variant.save
    expect(variant.start).to be_nil

  end

  it 'should also remove commas before casting to an int' do
    variant = Fabricate(:variant)
    variant.start = "1,000"
    variant.save
    expect(variant.start).to eq(1000)
  end

  it 'should preserve the value otherwise' do
    variant = Fabricate(:variant)

    variant.start = 1000
    variant.save
    expect(variant.start).to eq(1000)

    variant.start = "200"
    variant.save
    expect(variant.start).to eq(200)
  end

  it 'should work with suggested changes' do
    variant = Fabricate(:variant, reference_bases: "ABCD")
    user = Fabricate(:user)
    applying_user = Fabricate(:user)
    org = Fabricate(:organization)

    variant.start = "1,000"
    change = variant.suggest_change!(user, {}, {})
    change.apply(applying_user, org, false)
    variant.reload

    expect(variant.start).to eq(1000)
  end
end
