module Actions
  class SuggestChange
    include Actions::Transactional
    attr_reader :moderated_object, :moderation_params, :additional_params, :suggesting_user, :suggested_change
    def initialize(moderated_object, suggesting_user, moderation_params, additional_params, minor_revisions)
      @moderated_object = moderated_object
      @suggesting_user = suggesting_user
      @moderation_params = moderation_params
      @additional_params = additional_params
      @minor_revisions = minor_revisions
    end

    private
    def execute
      @suggested_change = moderated_object.suggest_change!(suggesting_user, moderation_params, additional_params, minor_revisions)
      Event.create(
        action: 'change suggested',
        originating_user: suggesting_user,
        subject: moderated_object,
        state_params: suggested_change.state_params,
        minor: suggested_change.minor_revisions
      )
      suggested_change.subscribe_user(suggesting_user)
    rescue SuggestedChangeError => e
      errors << e.message
      raise ActiveRecord::Rollback
    end
  end
end
