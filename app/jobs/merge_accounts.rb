class MergeAccounts < ActiveJob::Base
  attr_reader :remaining_user, :subsumed_user

  def perform(remaining_user, subsumed_user)
    @remaining_user = remaining_user
    @subsumed_user = subsumed_user
    ActiveRecord::Base.transaction do
      transfer_comments
      transfer_subscriptions
      transfer_roles
      transfer_authorizations
      transfer_events
      transfer_revisions
      remove_old_user
    end
  end

  private
  def transfer_comments
    Comment.where(user: subsumed_user).find_each do |c|
      c.user = remaining_user
      c.save
    end
  end

  def transfer_subscriptions
    Subscription.where(user: subsumed_user).find_each do |s|
      new_values =  {
        user: remaining_user,
        subscribable: s.subscribable,
        action_type: s.action_type,
        action_class: s.action_class
      }
      transfer_ownership_or_delete(s, new_values, Subscription)
    end
  end

  def transfer_roles
    remaining_user.role = Role.highest_role_for_users(remaining_user, subsumed_user)
  end

  def transfer_authorizations
    Authorization.where(user: subsumed_user).find_each do |a|
      new_values = {
        user: remaining_user,
        provider: a.provider,
        uid: a.uid
      }
      transfer_ownership_or_delete(a, new_values, Authorization)
    end
  end

  def transfer_events
    Event.where(originating_user: subsumed_user).find_each do |e|
      e.originating_user = remaining_user
      e.save
    end
  end

  def transfer_revisions
    Audited.audit_class.where(user: subsumed_user).find_each do |a|
      a.user = remaining_user
      a.save
    end
  end

  def remove_old_user
    subsumed_user.destroy
  end

  def transfer_ownership_or_delete(object, new_values, klass)
    if klass.where(new_values).exists?
      object.destroy
    else
      object.user = remaining_user
      object.save
    end
  end
end
