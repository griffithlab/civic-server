class ListMembersNotFoundError < SuggestedChangeError
  def initialize
    super('One or more provided ids does not appear to be valid')
  end
end
