module Actions
  class SuggestPublication
    include Actions::Transactional
    attr_reader :source, :originating_user, :pubmed_id, :suggestion_params, :initial_comment

    def initialize(suggestion_params, comment_params, originating_user)
      local_params = suggestion_params.dup
      @initial_comment = comment_params[:text]
      @pubmed_id = local_params.delete(:pubmed_id)
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
        create_event
      end
    end

    def set_source
      if existing_source = Source.find_by(pubmed_id: pubmed_id)
        @source = existing_source
      else
        begin
          new_source = Source.new(pubmed_id: pubmed_id, status: 'submitted')
          Scrapers::PubMed.populate_source_fields(new_source)
          @source = new_source
        rescue StandardError
          errors << 'Failed to populate data from PubMed'
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
