require 'rails_helper'

describe 'ClinvarEntry' do
  it 'get_or_create_by_id' do
    expect(ClinvarEntry.count).to eq 0
    clinvar_entry = ClinvarEntry.get_or_create_by_id("Test Clinvar ID")
    expect(ClinvarEntry.count).to eq 1
    expect(clinvar_entry.display_name).to be clinvar_entry.clinvar_id

    #Case insensitive search so no second variant alias gets created
    clinvar_entry2 = ClinvarEntry.get_or_create_by_id("tEsT cLiNvAr Id")
    expect(clinvar_entry).to eq clinvar_entry2
    expect(ClinvarEntry.count).to eq 1
  end
end
