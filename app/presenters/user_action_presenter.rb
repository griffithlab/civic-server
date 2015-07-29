class UserActionPresenter
  attr_reader :tracked

  def initialize(tracked)
    @tracked = tracked
  end

  def as_json(options = {})
    {
      'created by' => UserPresenter.new(tracked.creator),
    }.merge(last_editor)
  end

  private
  def last_editor
    if user = tracked.last_updator
      { 'last edited by' => UserPresenter.new(user) }
    end
  end
end
