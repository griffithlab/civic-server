class PopulateAcmgCodes < ActiveRecord::Migration
  def up
    AcmgCode.create :code => 'PVS1', :description => 'Null variants (nonsense, frameshift, canonical ±1 or 2 splice sites, initiation codon, single or multiexon deletion) in a gene where LOF is a known mechanism of disease'
    AcmgCode.create :code => 'PS1', :description => 'Same amino acid change as a previously established pathogenic variant regardless of nucleotide change'
    AcmgCode.create :code => 'PS2', :description => 'De novo (both maternity and paternity confirmed) in a patient with the disease and no family history'
    AcmgCode.create :code => 'PS3', :description => 'Well-established in vitro or in vivo functional studies supportive of a damaging effect on the gene or gene product'
    AcmgCode.create :code => 'PS4', :description => 'The prevalence of the variant in affected individuals is significantly increased compared with the prevalence in controls'
    AcmgCode.create :code => 'PM1', :description => 'Located in a mutational hot spot and/or critical and well-established functional domain (e.g., active site of an enzyme) without benign variation'
    AcmgCode.create :code => 'PM2', :description => 'Absent from controls (or at extremely low frequency if recessive) in Exome Sequencing Project, 1000 Genomes Project, or Exome Aggregation Consortium'
    AcmgCode.create :code => 'PM3', :description => 'For recessive disorders, detected in trans with a pathogenic variant'
    AcmgCode.create :code => 'PM4', :description => 'Protein length changes as a result of in-frame deletions/insertions in a nonrepeat region or stop-loss variants'
    AcmgCode.create :code => 'PM5', :description => 'Novel missense change at an amino acid residue where a different missense change determined to be pathogenic has been seen before'
    AcmgCode.create :code => 'PP1', :description => 'Cosegregation with disease in multiple affected family members in a gene definitively known to cause the disease'
    AcmgCode.create :code => 'PP2', :description => 'Missense variant in a gene that has a low rate of benign missense variation and in which missense variants are a common mechanism of disease'
    AcmgCode.create :code => 'PP3', :description => 'Multiple lines of computational evidence support a deleterious effect on the gene or gene product (conservation, evolutionary, splicing impact, etc.)'
    AcmgCode.create :code => 'PP4', :description => "Patient's phenotype or family history is highly specific for a disease with a single genetic etiology"
    AcmgCode.create :code => 'PP5', :description => 'Reputable source recently reports variant as pathogenic, but the evidence is not available to the laboratory to perform an independent evaluation'
    AcmgCode.create :code => 'BA1', :description => 'Allele frequency is >5% in Exome Sequencing Project, 1000 Genomes Project, or Exome Aggregation Consortium'
    AcmgCode.create :code => 'BS1', :description => 'Allele frequency is greater than expected for disorder'
    AcmgCode.create :code => 'BS2', :description => 'Observed in a healthy adult individual for a recessive (homozygous), dominant (heterozygous), or X-linked (hemizygous) disorder, with full penetrance expected at an early age'
    AcmgCode.create :code => 'BS3', :description => 'Well-established in vitro or in vivo functional studies show no damaging effect on protein function or splicing'
    AcmgCode.create :code => 'BS4', :description => 'Lack of segregation in affected members of a family'
    AcmgCode.create :code => 'BP1', :description => 'Missense variant in a gene for which primarily truncating variants are known to cause disease'
    AcmgCode.create :code => 'BP2', :description => 'Observed in trans with a pathogenic variant for a fully penetrant dominant gene/disorder or observed in cis with a pathogenic variant in any inheritance pattern'
    AcmgCode.create :code => 'BP3', :description => 'In-frame deletions/insertions in a repetitive region without a known function'
    AcmgCode.create :code => 'BP4', :description => 'Multiple lines of computational evidence suggest no impact on gene or gene product (conservation, evolutionary, splicing impact, etc.)'
    AcmgCode.create :code => 'BP5', :description => 'Variant found in a case with an alternate molecular basis for disease'
    AcmgCode.create :code => 'BP6', :description => 'Reputable source recently reports variant as benign, but the evidence is not available to the laboratory to perform an independent evaluation'
    AcmgCode.create :code => 'BP7', :description => 'A synonymous (silent) variant for which splicing prediction algorithms predict no impact to the splice consensus sequence nor the creation of a new splice site AND the nucleotide is not highly conserved'
  end

  def down
    AcmgCode.destroy_all
  end
end
