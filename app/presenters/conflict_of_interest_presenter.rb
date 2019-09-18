class ConflictOfInterestPresenter
  attr_reader :coi

  def initialize(coi)
    @coi = coi
  end

  def as_json(opts = {})
    {
      coi_valid: coi_status,
      details: coi_details
    }
  end

  private
  def coi_status
    if coi.nil?
      'missing'
    elsif coi.expired?
      'expired'
    elsif coi.coi_present?
      'conflict'
    else
      'valid'
    end
  end

  def coi_details
    if coi.nil?
      {}
    else
      {
        coi_present: coi.coi_present,
        coi_statement: coi.coi_statement,
        created_at: coi.created_at,
        expires_at: coi.expires_at,

      }
    end
  end
end
