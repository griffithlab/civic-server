class ChangeAlreadyAppliedError < SuggestedChangeError
  def initialize(suggested_change)
    super("This change (#{suggested_change.id}) has already been applied")
  end
end