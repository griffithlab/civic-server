require 'rails_helper'

describe 'HgvsExpression' do
  before(:each) do
    @hgvs_expression = Fabricate(:hgvs_expression)
    @variant = Fabricate(:variant, hgvs_expressions: [@hgvs_expression])
  end

  it 'display_name' do
    expect(@hgvs_expression.display_name).to be @hgvs_expression.expression
  end

  it 'deletion variant_type' do
    @variant.chromosome = 3
    @variant.start = 10188302
    @variant.stop = 10188302
    @variant.reference_bases = 'G'
    expect(HgvsExpression.variant_type(@variant)).to be :deletion
    expect(HgvsExpression.hgvs(@variant, 'my_gene_info')).to eq 'chr3:g.10188302del'
  end

  it 'large deletion variant_type' do
    @variant.chromosome = 3
    @variant.start = 10188302
    @variant.stop = 10188303
    @variant.reference_bases = 'GA'
    expect(HgvsExpression.variant_type(@variant)).to be :deletion
    expect(HgvsExpression.my_gene_info_hgvs(@variant)).to eq 'chr3:g.10188302_10188303del'
  end

  it 'insertion variant_type' do
    @variant.chromosome = 3
    @variant.start = 10188289
    @variant.stop = 10188290
    @variant.variant_bases = 'A'
    expect(HgvsExpression.variant_type(@variant)).to be :insertion
    expect(HgvsExpression.my_gene_info_hgvs(@variant)).to eq 'chr3:g.10188289_10188290insA'
  end

  it 'substitution variant_type' do
    @variant.chromosome = 3
    @variant.start = 10191649
    @variant.stop = 10191649
    @variant.reference_bases = 'A'
    @variant.variant_bases = 'T'
    expect(HgvsExpression.variant_type(@variant)).to be :substitution
    expect(HgvsExpression.my_gene_info_hgvs(@variant)).to eq 'chr3:g.10191649A>T'
  end

  it 'indel variant_type' do
    @variant.chromosome = 3
    @variant.start = 10183794
    @variant.stop = 10183796
    @variant.reference_bases = 'GGC'
    @variant.variant_bases = 'TT'
    expect(HgvsExpression.variant_type(@variant)).to be :indel
    expect(HgvsExpression.my_gene_info_hgvs(@variant)).to eq 'chr3:g.10183794_10183796delinsTT'
  end
end
