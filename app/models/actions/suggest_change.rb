module Actions
  class SuggestChange
    include Actions::Transactional
    attr_reader :moderated_object, :moderation_params, :additional_params, :suggesting_user, :suggested_change, :organization
    def initialize(moderated_object, suggesting_user, moderation_params, additional_params, organization)
      @moderated_object = moderated_object
      @suggesting_user = suggesting_user
      @moderation_params = moderation_params
      @additional_params = additional_params
      @organization = organization
    end

    private
    def execute
      @suggested_change = moderated_object.suggest_change!(suggesting_user, moderation_params, additional_params)
      Event.create(
        action: 'change suggested',
        originating_user: suggesting_user,
        subject: moderated_object,
        state_params: suggested_change.state_params,
        organization: organization
      )
      moderated_object.subscribe_user(suggesting_user)
    rescue SuggestedChangeError => e
      errors << e.message
      raise ActiveRecord::Rollback
    end
  end
end
