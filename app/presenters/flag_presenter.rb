class FlagPresenter
  attr_reader :flag

  def initialize(flag)
    @flag = flag
  end

  def as_json(opt = {})
    {
      id: flag.id,
      flagging_user: UserPresenter.new(flag.flagging_user),
      resolving_user: flag.resolving_user ? UserPresenter.new(flag.resolving_user) : {},
      state: flag.state,
      comments: flag.comments.map { |c| CommentPresenter.new(c) },
      created_at: flag.created_at,
      updated_at: flag.updated_at,
      state_params: flag.state_params,
      flaggable_type: flag.flaggable_type,
      flaggable_id: flag.flaggable_id
    }
  end
end
