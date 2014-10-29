class NoSuggestedChangesError < StandardError
  def as_json(options = {})
    {
      error: 'No changes were suggested!'
    }
  end
end
