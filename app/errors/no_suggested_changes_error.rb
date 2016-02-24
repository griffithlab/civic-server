class NoSuggestedChangesError < SuggestedChangeError
  def initialize
    super('The suggested change was identical to the existing item')
  end
end
