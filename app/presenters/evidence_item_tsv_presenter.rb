class EvidenceItemTsvPresenter
  def self.objects
    EvidenceItem.eager_load(:disease, :source, :evidence_type, :evidence_level, :drug, variant: [:gene])
  end

  def self.headers
    [
      'gene',
      'entrez_id',
      'variant',
      'disease',
      'doid',
      'drug',
      'pubchem_id',
      'evidence_type',
      'evidence_direction',
      'clinical_significance',
      'statement',
      'pubmed_id',
      'citation',
      'rating'
    ]
  end

  def self.row_from_object(ei)
    [
      ei.variant.gene.name,
      ei.variant.gene.entrez_id,
      ei.variant.name,
      ei.disease.name,
      ei.disease.doid,
      ei.drug.name,
      ei.drug.pubchem_id,
      ei.evidence_type.evidence_type,
      ei.evidence_direction,
      ei.clinical_significance,
      ei.text,
      ei.source.pubmed_id,
      ei.source.description,
      ei.rating
    ]
  end

  def self.file_name
    'ClinicalEvidenceSummaries.tsv'
  end
end
