module Actions
  class SuggestChange
    include Actions::Transactional
    include Actions::WithEvent
    attr_reader :moderated_object, :subject, :moderation_params, :additional_params, :suggesting_user, :originating_user, :suggested_change, :organization
    def initialize(moderated_object, suggesting_user, moderation_params, additional_params, organization)
      @moderated_object = moderated_object
      @subject = moderated_object
      @suggesting_user = suggesting_user
      @originating_user = suggesting_user
      @moderation_params = moderation_params
      @additional_params = additional_params
      @organization = organization
    end

    private
    def execute
      @suggested_change = moderated_object.suggest_change!(suggesting_user, moderation_params, additional_params)
      create_event('change suggested')
      moderated_object.subscribe_user(suggesting_user)
    rescue SuggestedChangeError => e
      errors << e.message
      raise ActiveRecord::Rollback
    end

    def state_params
      suggested_change.state_params
    end
  end
end
