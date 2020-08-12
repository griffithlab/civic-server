require 'rails_helper'

describe 'WithNulledBlanks' do

  it 'should define a new class method on the model its mixed into' do
    expect(Variant.methods.include?(:columns_with_nulled_blanks)).to be(true)
  end

  it 'should make whitespace or empty string NULL before saving to the db' do
    variant = Fabricate(:variant)

    variant.reference_bases = ""
    variant.save
    expect(variant.reference_bases).to be_nil

    variant.reference_bases = "    "
    variant.save
    expect(variant.reference_bases).to be_nil
  end

  it 'should preserve the value otherwise' do
    variant = Fabricate(:variant)

    variant.reference_bases = "ABC"
    variant.save
    expect(variant.reference_bases).to eq("ABC")
  end

  it 'should work with suggested changes' do
    variant = Fabricate(:variant, reference_bases: "ABCD")
    user = Fabricate(:user)
    applying_user = Fabricate(:user)
    org = Fabricate(:organization)

    variant.reference_bases = ""
    change = variant.suggest_change!(user, {}, {})
    change.apply(applying_user, org, false)
    variant.reload

    expect(variant.reference_bases).to be_nil
  end
end
