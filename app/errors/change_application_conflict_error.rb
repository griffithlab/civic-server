class ChangeApplicationConflictError < StandardError
  def as_json(options = {})
    {
      error: 'The underlying object has been modified since this change has been suggested'
    }
  end
end
