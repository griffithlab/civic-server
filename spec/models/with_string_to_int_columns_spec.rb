require 'rails_helper'

describe 'WithStringToIntColumns' do

  it 'should define a new class method on the model its mixed into' do
    expect(Variant.methods.include?(:string_to_int_columns)).to be(true)
  end

  it 'should remove commas before it casts to int' do
    variant = Fabricate(:variant)

    variant.start = "1,000,000"
    variant.save
    expect(variant.start).to eq(1000000)
  end

  it 'shouldnt break when an actual int is passed' do
    variant = Fabricate(:variant)

    variant.start = 1000000
    variant.save
    expect(variant.start).to eq(1000000)
  end

  it 'should work with suggested changes' do
    variant = Fabricate(:variant)
    user = Fabricate(:user)
    applying_user = Fabricate(:user)

    variant.stop = "1,000,000"
    change = variant.suggest_change!(user, {}, {})
    change.apply(applying_user, false)
    variant.reload

    expect(variant.stop).to eq(1000000)
  end
end
