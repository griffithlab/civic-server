class ProteinMotifPresenter
  def initialize(protein_motif)
    @protein_motif = protein_motif
  end

  def as_json(options = {})
    {
      id: @protein_motif.id,
      name: @protein_motif.name
    }
  end
end
