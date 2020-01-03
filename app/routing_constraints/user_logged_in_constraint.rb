#This is required for the mounted Sidekiq UI as
#we need to auth the user, but it will never hit our Application Controller
class UserLoggedInConstraint
  def matches?(request)
    user_id = request.session[:user_id]
    if user_id.present? && u = User.find(user_id)
      return Role.user_is_at_least_a?(u, :admin)
    end
    return false
  end
end
