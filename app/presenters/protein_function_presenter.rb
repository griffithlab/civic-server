class ProteinFunctionPresenter
  def initialize(protein_function)
    @protein_function = protein_function
  end

  def as_json(options = {})
    {
      id: @protein_function.id,
      name: @protein_function.name
    }
  end
end
