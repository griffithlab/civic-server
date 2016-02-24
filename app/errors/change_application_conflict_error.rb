class ChangeApplicationConflictError < SuggestedChangeError
  def initialize(moderated)
    super("#{moderated.name} has been modified since this change was suggested. Use the 'force' parameter if you would like to apply it anyways")
  end
end
