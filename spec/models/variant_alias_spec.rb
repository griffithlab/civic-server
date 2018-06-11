require 'rails_helper'

describe 'VariantAlias' do
  it 'get_or_create_by_name' do
    expect(VariantAlias.count).to eq 0
    variant_alias = VariantAlias.get_or_create_by_name("Test Variant Alias")
    expect(VariantAlias.count).to eq 1
    expect(variant_alias.display_name).to be variant_alias.name

    #Case insensitive search so no second variant alias gets created
    variant_alias2 = VariantAlias.get_or_create_by_name("tEsT vArIaNt AlIaS")
    expect(variant_alias).to eq variant_alias2
    expect(VariantAlias.count).to eq 1
  end
end
