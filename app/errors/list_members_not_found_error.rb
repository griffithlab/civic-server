class ListMembersNotFoundError < StandardError
  attr_reader :members

  def initialize(members)
    @members = members
  end

  def as_json(options = {})
    {
      error: "Not all list members were found for list: #{members.join(', ')}"
    }
  end
end
