module Actions
  class SuggestPublication
    include Actions::Transactional
    attr_reader :source, :originating_user, :citation_id, :source_type, :suggestion_params, :initial_comment

    def initialize(suggestion_params, comment_params, originating_user)
      local_params = suggestion_params.dup
      @initial_comment = comment_params[:text]
      @citation_id = local_params[:source][:citation_id]
      @source_type = local_params[:source][:source_type]
      local_params.delete(:source)
      @originating_user = originating_user
      @suggestion_params = local_params
    end

    private
    def execute
      set_source
      if source.status == 'exhausted'
        errors << 'This source has been marked as exhausted. Please try a different publication'
        return
      end
      if create_publication_submission
        if source.status == 'fully curated'
          source.status = 'partially curated'
          source.save
        end
        create_event.tap do |event|
          NotifyMentioned.perform_later(initial_comment, originating_user, event)
        end
      end
    end

    def set_source
      source_type_int = Source.source_types[source_type]
      if existing_source = Source.find_by(citation_id: citation_id, source_type: source_type_int)
        if not existing_source.valid?
          errors << existing_source.errors.messages
          return
        end
        @source = existing_source
      else
        if source_type == 'PubMed'
          begin
            new_source = Source.new(citation_id: citation_id, source_type: source_type, status: 'submitted')
            if not new_source.valid?
              errors << new_source.errors.messages
              return
            end
            Scrapers::PubMed.populate_source_fields(new_source)
            @source = new_source
          rescue StandardError
            errors << 'Failed to populate data from PubMed'
          end
        elsif source_type == 'ASCO'
          begin
            new_source = Source.new(citation_id: citation_id, source_type: source_type, status: 'submitted')
            if not new_source.valid?
              errors << new_source.errors.messages
              return
            end
            Scrapers::Asco.populate_source_fields(new_source)
            @source = new_source
          rescue StandardError
            errors << 'Failed to populate data from ASCO'
          end
        else
          errors << "Unsupported source type #{source_type}"
        end
      end
    end

    def create_publication_submission
      if SourceSuggestion.find_by(suggestion_params.merge({source: source}))
        errors << 'Sorry, this has already been submitted to CIViC'
        return nil
      else
        SourceSuggestion.create(suggestion_params.merge({user: originating_user, initial_comment: initial_comment, source: source, status: 'new'}))
      end
    end

    def create_event
      Event.create(
        action: 'publication suggested',
        originating_user: originating_user,
        subject: source
      )
    end
  end
end
