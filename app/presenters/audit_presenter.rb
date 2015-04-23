class AuditPresenter
  def initialize(audit)
    @audit = audit
  end

  def as_json(options = {})
    if @audit.nil?
      {}
    else
      {
        id: @audit.id,
        action: @audit.action,
        user: UserPresenter.new(@audit.user),
        created_at: @audit.created_at,
        changes: @audit.audited_changes,
        diffs: DiffPresenter.new(@audit.audited_changes)
      }
    end
  end
end
