class AddNewAcmgCodes < ActiveRecord::Migration
  def up
    AcmgCode.create :code => 'BA1_Supporting', :description => 'Allele frequency is >5% in Exome Sequencing Project, 1000 Genomes Project, or Exome Aggregation Consortium. The strength of this evaluation has been adjusted to Supporting from its inherent level of Stand-alone.'
    AcmgCode.create :code => 'BA1_Strong', :description => 'Allele frequency is >5% in Exome Sequencing Project, 1000 Genomes Project, or Exome Aggregation Consortium. The strength of this evaluation has been adjusted to Strong from its inherent level of Stand-alone.'
    AcmgCode.create :code => 'BA1_Not-met', :description => 'The evidence does not support a positive evaluation of the BA1 criterion.'

    AcmgCode.create :code => 'BS1_Supporting', :description => 'Allele frequency is greater than expected for disorder. The strength of this evaluation has been adjusted to Supporting from its inherent level of Strong.'
    AcmgCode.create :code => 'BS1_Stand-alone', :description => 'Allele frequency is greater than expected for disorder. The strength of this evaluation has been adjusted to Stand-alone from its inherent level of Strong.'
    AcmgCode.create :code => 'BS1_Not-met', :description => 'The evidence does not support a positive evaluation of the BS1 criterion.'

    AcmgCode.create :code => 'BS2_Supporting', :description => 'Observed in a healthy adult individual for a recessive (homozygous), dominant (heterozygous), or X-linked (hemizygous) disorder, with full penetrance expected at an early age. The strength of this evaluation has been adjusted to Supporting from its inherent level of Strong.'
    AcmgCode.create :code => 'BS2_Stand-alone', :description => 'Observed in a healthy adult individual for a recessive (homozygous), dominant (heterozygous), or X-linked (hemizygous) disorder, with full penetrance expected at an early age. The strength of this evaluation has been adjusted to Stand-alone from its inherent level of Strong.'
    AcmgCode.create :code => 'BS2_Not-met', :description => 'The evidence does not support a positive evaluation of the BS2 criterion.'

    AcmgCode.create :code => 'BS3_Supporting', :description => 'Well-established in vitro or in vivo functional studies show no damaging effect on protein function or splicing. The strength of this evaluation has been adjusted to Supporting from its inherent level of Strong.'
    AcmgCode.create :code => 'BS3_Stand-alone', :description => 'Well-established in vitro or in vivo functional studies show no damaging effect on protein function or splicing. The strength of this evaluation has been adjusted to Stand-alone from its inherent level of Strong.'
    AcmgCode.create :code => 'BS3_Not-met', :description => 'The evidence does not support a positive evaluation of the BS3 criterion'

    AcmgCode.create :code => 'BS4_Supporting', :description => 'Lack of segregation in affected members of a family. The strength of this evaluation has been adjusted to Supporting from its inherent level of Strong.'
    AcmgCode.create :code => 'BS4_Stand-alone', :description => 'Lack of segregation in affected members of a family.The strength of this evaluation has been adjusted to Stand-alone from its inherent level of Strong.'
    AcmgCode.create :code => 'BS4_Not-met', :description => 'The evidence does not support a positive evaluation of the BS4 criterion'

    AcmgCode.create :code => 'BP1_Strong', :description => 'Missense variant in a gene for which primarily truncating variants are known to cause disease. The strength of this evaluation has been adjusted to Strong from its inherent level of Supporting.'
    AcmgCode.create :code => 'BP1_Stand-alone', :description => 'Missense variant in a gene for which primarily truncating variants are known to cause disease. The strength of this evaluation has been adjusted to Stand-alone from its inherent level of Supporting.'
    AcmgCode.create :code => 'BP1_Not-met', :description => 'The evidence does not support a positive evaluation of the BP1 criterion'

    AcmgCode.create :code => 'BP2_Strong', :description => 'Observed in trans with a pathogenic variant for a fully penetrant dominant gene/disorder or observed in cis with a pathogenic variant in any inheritance pattern. The strength of this evaluation has been adjusted to Strong from its inherent level of Supporting.'
    AcmgCode.create :code => 'BP2_Stand-alone', :description => 'Observed in trans with a pathogenic variant for a fully penetrant dominant gene/disorder or observed in cis with a pathogenic variant in any inheritance pattern. The strength of this evaluation has been adjusted to Stand-alone from its inherent level of Supporting.'
    AcmgCode.create :code => 'BP2_Not-met', :description => 'The evidence does not support a positive evaluation of the BP2 criterion'

    AcmgCode.create :code => 'BP3_Strong', :description => 'In-frame deletions/insertions in a repetitive region without a known function. The strength of this evaluation has been adjusted to Strong from its inherent level of Supporting.'
    AcmgCode.create :code => 'BP3_Stand-alone', :description => 'In-frame deletions/insertions in a repetitive region without a known function. The strength of this evaluation has been adjusted to Stand-alone from its inherent level of Supporting.'
    AcmgCode.create :code => 'BP3_Not-met', :description => 'The evidence does not support a positive evaluation of the BP3 criterion'

    AcmgCode.create :code => 'BP4_Strong', :description => 'Multiple lines of computational evidence suggest no impact on gene or gene product (conservation, evolutionary, splicing impact, etc.). The strength of this evaluation has been adjusted to Strong from its inherent level of Supporting.'
    AcmgCode.create :code => 'BP4_Stand-alone', :description => 'Multiple lines of computational evidence suggest no impact on gene or gene product (conservation, evolutionary, splicing impact, etc.). The strength of this evaluation has been adjusted to Stand-alone from its inherent level of Supporting.'
    AcmgCode.create :code => 'BP4_Not-met', :description => 'The evidence does not support a positive evaluation of the BP4 criterion'

    AcmgCode.create :code => 'BP5_Strong', :description => 'Variant found in a case with an alternate molecular basis for disease. The strength of this evaluation has been adjusted to Strong from its inherent level of Supporting.'
    AcmgCode.create :code => 'BP5_Stand-alone', :description => 'Variant found in a case with an alternate molecular basis for disease. The strength of this evaluation has been adjusted to Stand-alone from its inherent level of Supporting.'
    AcmgCode.create :code => 'BP5_Not-met', :description => 'The evidence does not support a positive evaluation of the BP5 criterion'

    AcmgCode.create :code => 'BP6_Not-met', :description => 'The evidence does not support a positive evaluation of the BP6 criterion'

    AcmgCode.create :code => 'BP7_Strong', :description => 'A synonymous (silent) variant for which splicing prediction algorithms predict no impact to the splice consensus sequence nor the creation of a new splice site AND the nucleotide is not highly conserved. The strength of this evaluation has been adjusted to Strong from its inherent level of Supporting.'
    AcmgCode.create :code => 'BP7_Stand-alone', :description => 'A synonymous (silent) variant for which splicing prediction algorithms predict no impact to the splice consensus sequence nor the creation of a new splice site AND the nucleotide is not highly conserved. The strength of this evaluation has been adjusted to Stand-alone from its inherent level of Supporting.'
    AcmgCode.create :code => 'BP7_Not-met', :description => 'The evidence does not support a positive evaluation of the BP7 criterion'

    AcmgCode.create :code => 'PP1_Moderate', :description => 'Cosegregation with disease in multiple affected family members in a gene definitively known to cause the disease. The strength of this evaluation has been adjusted to Moderate from its inherent level of Supporting.'
    AcmgCode.create :code => 'PP1_Strong', :description => 'Cosegregation with disease in multiple affected family members in a gene definitively known to cause the disease. The strength of this evaluation has been adjusted to Strong from its inherent level of Supporting.'
    AcmgCode.create :code => 'PP1_Not-met', :description => 'The evidence does not support a positive evaluation of the PP1 criterion'

    AcmgCode.create :code => 'PP2_Moderate', :description => 'Missense variant in a gene that has a low rate of benign missense variation and in which missense variants are a common mechanism of disease. The strength of this evaluation has been adjusted to Moderate from its inherent level of Supporting.'
    AcmgCode.create :code => 'PP2_Strong', :description => 'Missense variant in a gene that has a low rate of benign missense variation and in which missense variants are a common mechanism of disease. The strength of this evaluation has been adjusted to Strong from its inherent level of Supporting.'
    AcmgCode.create :code => 'PP2_Not-met', :description => 'The evidence does not support a positive evaluation of the PP2 criterion'

    AcmgCode.create :code => 'PP3_Moderate', :description => 'Multiple lines of computational evidence support a deleterious effect on the gene or gene product (conservation, evolutionary, splicing impact, etc.). The strength of this evaluation has been adjusted to Moderate from its inherent level of Supporting.'
    AcmgCode.create :code => 'PP3_Strong', :description => 'Multiple lines of computational evidence support a deleterious effect on the gene or gene product (conservation, evolutionary, splicing impact, etc.). The strength of this evaluation has been adjusted to Strong from its inherent level of Supporting.'
    AcmgCode.create :code => 'PP3_Not-met', :description => 'The evidence does not support a positive evaluation of the PP3 criterion'

    AcmgCode.create :code => 'PP4_Moderate', :description => 'Patient phenotype or family history is highly specific for a disease with a single genetic etiology. The strength of this evaluation has been adjusted to Moderate from its inherent level of Supporting.'
    AcmgCode.create :code => 'PP4_Strong ', :description => 'Patient phenotype or family history is highly specific for a disease with a single genetic etiology. The strength of this evaluation has been adjusted to Strong from its inherent level of Supporting.'
    AcmgCode.create :code => 'PP4_Not-met', :description => 'The evidence does not support a positive evaluation of the PP4 criterion'

    AcmgCode.create :code => 'PP5_Not-met', :description => 'The evidence does not support a positive evaluation of the PP5 criterion'

    AcmgCode.create :code => 'PM1_Supporting', :description => 'Located in a mutational hot spot and/or critical and well-established functional domain (e.g., active site of an enzyme) without benign variation. The strength of this evaluation has been adjusted to Supporting from its inherent level of Moderate.'
    AcmgCode.create :code => 'PM1_Strong', :description => 'Located in a mutational hot spot and/or critical and well-established functional domain (e.g., active site of an enzyme) without benign variation. The strength of this evaluation has been adjusted to Strong from its inherent level of Moderate.'
    AcmgCode.create :code => 'PM1_Not-met', :description => 'The evidence does not support a positive evaluation of the PM1 criterion'

    AcmgCode.create :code => 'PM2_Supporting', :description => 'Absent from controls (or at extremely low frequency if recessive) in Exome Sequencing Project, 1000 Genomes Project, or Exome Aggregation Consortium. The strength of this evaluation has been adjusted to Supporting from its inherent level of Moderate.'
    AcmgCode.create :code => 'PM2_Strong', :description => 'Absent from controls (or at extremely low frequency if recessive) in Exome Sequencing Project, 1000 Genomes Project, or Exome Aggregation Consortium. The strength of this evaluation has been adjusted to Strong from its inherent level of Moderate.'
    AcmgCode.create :code => 'PM2_Not-met', :description => 'The evidence does not support a positive evaluation of the PM2 criterion'

    AcmgCode.create :code => 'PM3_Supporting', :description => 'For recessive disorders, detected in trans with a pathogenic variant. The strength of this evaluation has been adjusted to Supporting from its inherent level of Moderate.'
    AcmgCode.create :code => 'PM3_Strong', :description => 'For recessive disorders, detected in trans with a pathogenic variant. The strength of this evaluation has been adjusted to Strong from its inherent level of Moderate.'
    AcmgCode.create :code => 'PM3_Very-strong', :description => 'For recessive disorders, detected in trans with a pathogenic variant. The strength of this evaluation has been adjusted to Very-strong from its inherent level of Moderate.'
    AcmgCode.create :code => 'PM3_Not-met', :description => 'The evidence does not support a positive evaluation of the PM3 criterion'

    AcmgCode.create :code => 'PM4_Supporting', :description => 'Protein length changes as a result of in-frame deletions/insertions in a nonrepeat region or stop-loss variants. The strength of this evaluation has been adjusted to Supporting from its inherent level of Moderate.'
    AcmgCode.create :code => 'PM4_Strong', :description => 'Protein length changes as a result of in-frame deletions/insertions in a nonrepeat region or stop-loss variants. The strength of this evaluation has been adjusted to Strong from its inherent level of Moderate.'
    AcmgCode.create :code => 'PM4_Not-met', :description => 'The evidence does not support a positive evaluation of the PM4 criterion'

    AcmgCode.create :code => 'PM5_Supporting', :description => 'Novel missense change at an amino acid residue where a different missense change determined to be pathogenic has been seen before. The strength of this evaluation has been adjusted to Supporting from its inherent level of Moderate.'
    AcmgCode.create :code => 'PM5_Strong', :description => 'Novel missense change at an amino acid residue where a different missense change determined to be pathogenic has been seen before. The strength of this evaluation has been adjusted to Strong from its inherent level of Moderate.'
    AcmgCode.create :code => 'PM5_Not-met', :description => 'The evidence does not support a positive evaluation of the PM5 criterion'

    AcmgCode.create :code => 'PM6', :description => 'Assumed de novo, but without confirmation of paternity and maternity'
    AcmgCode.create :code => 'PM6_Supporting', :description => 'Assumed de novo, but without confirmation of paternity and maternity. The strength of this evaluation has been adjusted to Supporting from its inherent level of Moderate.'
    AcmgCode.create :code => 'PM6_Strong', :description => 'Assumed de novo, but without confirmation of paternity and maternity. The strength of this evaluation has been adjusted to Strong from its inherent level of Moderate.'
    AcmgCode.create :code => 'PM6_Not-met', :description => 'The evidence does not support a positive evaluation of the PM6 criterion'

    AcmgCode.create :code => 'PS1_Supporting', :description => 'Same amino acid change as a previously established pathogenic variant regardless of nucleotide change. The strength of this evaluation has been adjusted to Supporting from its inherent level of Strong.'
    AcmgCode.create :code => 'PS1_Moderate', :description => 'Same amino acid change as a previously established pathogenic variant regardless of nucleotide change. The strength of this evaluation has been adjusted to Moderate from its inherent level of Strong.'
    AcmgCode.create :code => 'PS1_Not-met', :description => 'The evidence does not support a positive evaluation of the PS1 criterion'

    AcmgCode.create :code => 'PS2_Supporting', :description => 'De novo (both maternity and paternity confirmed) in a patient with the disease and no family history. The strength of this evaluation has been adjusted to Supporting from its inherent level of Strong.'
    AcmgCode.create :code => 'PS2_Moderate', :description => 'De novo (both maternity and paternity confirmed) in a patient with the disease and no family history. The strength of this evaluation has been adjusted to Moderate from its inherent level of Strong.'
    AcmgCode.create :code => 'PS2_Very-strong', :description => 'De novo (both maternity and paternity confirmed) in a patient with the disease and no family history. The strength of this evaluation has been adjusted to Very-strong from its inherent level of Strong.'
    AcmgCode.create :code => 'PS2_Not-met', :description => 'The evidence does not support a positive evaluation of the PS2 criterion'

    AcmgCode.create :code => 'PS3_Supporting', :description => 'Well-established in vitro or in vivo functional studies supportive of a damaging effect on the gene or gene product. The strength of this evaluation has been adjusted to Supporting from its inherent level of Strong.'
    AcmgCode.create :code => 'PS3_Moderate', :description => 'Well-established in vitro or in vivo functional studies supportive of a damaging effect on the gene or gene product. The strength of this evaluation has been adjusted to Moderate from its inherent level of Strong.'
    AcmgCode.create :code => 'PS3_Not-met', :description => 'The evidence does not support a positive evaluation of the PS3 criterion'

    AcmgCode.create :code => 'PS4_Supporting', :description => 'The prevalence of the variant in affected individuals is significantly increased compared with the prevalence in controls. The strength of this evaluation has been adjusted to Supporting from its inherent level of Strong.'
    AcmgCode.create :code => 'PS4_Moderate', :description => 'The prevalence of the variant in affected individuals is significantly increased compared with the prevalence in controls. The strength of this evaluation has been adjusted to Moderate from its inherent level of Strong.'
    AcmgCode.create :code => 'PS4_Not-met', :description => 'The evidence does not support a positive evaluation of the PS4 criterion'

    AcmgCode.create :code => 'PVS1_Supporting', :description => 'Null variants (nonsense, frameshift, canonical ±1 or 2 splice sites, initiation codon, single or multiexon deletion) in a gene where LOF is a known mechanism of disease. The strength of this evaluation has been adjusted to Supporting from its inherent level of Very-strong.'
    AcmgCode.create :code => 'PVS1_Moderate', :description => 'Null variants (nonsense, frameshift, canonical ±1 or 2 splice sites, initiation codon, single or multiexon deletion) in a gene where LOF is a known mechanism of disease. The strength of this evaluation has been adjusted to Moderate from its inherent level of Very-strong.'
    AcmgCode.create :code => 'PVS1_Strong', :description => 'Null variants (nonsense, frameshift, canonical ±1 or 2 splice sites, initiation codon, single or multiexon deletion) in a gene where LOF is a known mechanism of disease. The strength of this evaluation has been adjusted to Strong from its inherent level of Very-strong.'
    AcmgCode.create :code => 'PVS1_Not-met', :description => 'The evidence does not support a positive evaluation of the PVS1 criterion'

    pp5 = AcmgCode.find_by(code: 'PP5')
    pp5.description = '[Not recommended - ClinGen has determined that this rule should not be applied in any context]. Reputable source recently reports variant as pathogenic, but the evidence is not available to the laboratory to perform an independent evaluation.'
    pp5.save

    bp6 = AcmgCode.find_by(code: 'BP6')
    bp6.description = '[Not recommended - ClinGen has determined that this rule should not be applied in any context]. Reputable source recently reports variant as benign, but the evidence is not available to the laboratory to perform an independent evaluation'
    bp6.save
  end

  def down
    AcmgCode.destroy_all
  end
end
