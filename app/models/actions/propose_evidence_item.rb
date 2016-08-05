module Actions
  class ProposeEvidenceItem
    include Actions::Transactional
    attr_reader :evidence_item, :originating_user, :direct_attributes, :relational_attributes

    def initialize(direct_attributes, relational_attributes, originating_user)
      @direct_attributes = direct_attributes
      @relational_attributes = relational_attributes
      @originating_user = originating_user
    end

    private
    def execute
      direct_attributes[:status] = 'submitted'
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
      evidence_item.subscribe_user(originating_user)
      @evidence_item = evidence_item
    end

    def get_variant(params)
      if variant = Variant.joins(:gene).where(genes: { id: params[:gene][:id] }, name: params[:variant][:name].upcase).first
        variant
      else
        Variant.create(gene: Gene.find_by(id: params[:gene][:id]), name: params[:variant][:name].upcase, description: '')
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
      else
        Source.new(pubmed_id: pubmed_id).tap do |source|
          Scrapers::PubMed.populate_source_fields(source)
        end
      end
    end

    def get_drugs(params)
      Array(params[:drugs]).map do |drug_name|
        if found_drug = Drug.where('lower(name) = ?', drug_name.downcase).first
          found_drug
        else
          Drug.create(name: drug_name)
        end
      end
    end
  end
end
