class AcmgCodeIndexPresenter
  attr_reader :acmg_code

  def initialize(acmg_code)
    @acmg_code = acmg_code
  end

  def as_json(opts = {})
    {
      code: acmg_code.code,
      description: acmg_code.description,
    }
  end
end
