class LastModifiedPresenter
  def initialize(audited)
    @audit = audited.audits.includes(:user).last
  end

  def as_json(options = {})
    if @audit
      {
        user: UserPresenter.new(@audit.user),
        timestamp: @audit.created_at
      }
    else
      {}
    end
  end
end
