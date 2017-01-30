class LoggedInUserPresenter < UserDetailPresenter
  def as_json(opts = {})
    super.merge({
      email: user.email
    })
  end
end
