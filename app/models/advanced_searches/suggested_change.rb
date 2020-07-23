module AdvancedSearches
  class SuggestedChange
    include Base

    def initialize(params)
      @params = params
      @presentation_class = SuggestedChangePresenter
    end

    def model_class
      ::SuggestedChange
    end

    private
    def handler_for_field(field)
      default_handler = method(:default_handler).to_proc
      @handlers ||= {
        'moderated_type' => default_handler.curry['suggested_changes.moderated_type'],
        'moderated_id' => default_handler.curry['suggested_changes.moderated_id'],
        'submitter' => default_handler.curry[['users.email', 'users.name', 'users.username']],
        'submitter_id' => default_handler.curry['users.id'],
        'status' => default_handler.curry['suggested_changes.status'],
        'id' => default_handler.curry['suggested_changes.id']
      }
      @handlers[field]
    end
  end
end
