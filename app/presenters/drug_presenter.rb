class DrugPresenter
  def initialize(drug)
    @drug = drug
  end

  def as_json(options = {})
    {
      id: @drug.id,
      name: @drug.name,
      pubchem_id: @drug.pubchem_id,
    }
  end
end