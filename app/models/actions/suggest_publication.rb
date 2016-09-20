module Actions
  class SuggestPublication
    attr_reader :source, :originating_user, :pubmed_id

    def initialize(pubmed_id, originating_user)
      @pubmed_id = pubmed_id
      @originating_user = originating_user
    end

    private
    def execute
      if existing_source = Source.find_by(pubmed_id: pubmed_id)
        @source = existing_source
        errors << 'This publication is already in CIViC'
      else
        begin
          new_source = Source.new(pubmed_id: pubmed_id, status: 'submitted')
          Scrapers::PubMed.populate_source_fields(new_source)
          @source = new_source
          Event.create(
            action: 'publication submitted',
            originating_user: originating_user,
            subject: new_source
          )
        rescue StandardError
          errors << 'Failed to populate data from PubMed'
        end
      end
    end
  end
end
