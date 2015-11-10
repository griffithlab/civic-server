module Actions
  class ProposeEvidenceItem
    attr_reader :evidence_item, :originating_user, :direct_attributes, :relational_attributes, :errors

    def initialize(direct_attributes, relational_attributes, originating_user)
      @direct_attributes = direct_attributes
      @relational_attributes = relational_attributes
      @originating_user = originating_user
      @errors = []
    end

    def perform
      direct_attributes[:status] = 'submitted'
      ActiveRecord::Base.transaction do
        evidence_item = EvidenceItem.new(direct_attributes).tap do |item|
          item.variant = get_variant(relational_attributes)
          item.disease = get_disease(relational_attributes)
          item.source = get_source(relational_attributes)
          item.drugs = get_drugs(relational_attributes)
          item.save
        end
        Event.create(
          action: 'submitted',
          originating_user: originating_user,
          subject: evidence_item
        )
        @evidence_item = evidence_item
      end
      self
    end

    def succeeded?
      errors.none?
    end

    private
    def get_variant(params)
      if params[:variant].present? && variant = Variant.find_by(name: params[:variant][:id])
        variant
      elsif variant = Variant.joins(:gene).where(genes: { id: params[:gene][:id] }, name: params[:variant][:name]).first
        variant
      else
        Variant.create(gene: Gene.find_by(id: params[:gene][:id]), name: params[:variant][:name], description: '')
      end
    end

    def get_disease(params)
      if params[:noDoid]
        Disease.create(name: params[:disease_name])
      else
        Disease.find_by(id: params[:disease][:id])
      end
    end

    def get_source(params)
      pubmed_id = params[:pubmed_id]
      if found_source = Source.find_by(pubmed_id: pubmed_id)
        found_source
      elsif (citation = Scrapers::PubMed.get_citation_from_pubmed_id(pubmed_id)).present?
        Source.create(description: citation, pubmed_id: pubmed_id)
      end
    end

    def get_drugs(params)
      Array(params[:drugs]).map do |drug_name|
        if found_drug = Drug.where('lower(name) = ?', drug_name.downcase).first
          found_drug
        else
          Drug.create(name: drug_name.strip.split.map { |w| w[0] = w[0].upcase; w }.join)
        end
      end
    end
  end
end
