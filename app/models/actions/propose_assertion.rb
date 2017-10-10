module Actions
  class ProposeAssertion
    include Actions::Transactional
    attr_reader :assertion, :originating_user, :direct_attributes, :relational_attributes

    def initialize(direct_attributes, relational_attributes, originating_user)
      @direct_attributes = direct_attributes
      @relational_attributes = relational_attributes
      @originating_user = originating_user
    end

    private
    def execute
      direct_attributes[:status] = 'submitted'
      assertion = Assertion.new(direct_attributes).tap do |item|
        item.gene = get_gene(relational_attributes)
        item.variant = get_variant(relational_attributes)
        item.disease = get_disease(relational_attributes)
        item.drugs = get_drugs(relational_attributes)
        item.evidence_items = get_evidence_items(relational_attributes)
        item.save
      end
      Event.create(
        action: 'assertion submitted',
        originating_user: originating_user,
        subject: assertion
      )
      assertion.subscribe_user(originating_user)
      @assertion = assertion
    end

    def get_gene(params)
      Gene.find_by(id: params[:gene][:id])
    end

    def get_variant(params)
      #check case insensitive first
      Variant.joins(:gene)
        .where(genes: { id: params[:gene][:id] })
        .where('lower(variants.name) = ?', params[:variant][:name].downcase).first
    end

    def get_disease(params)
      Disease.find_by(id: params[:disease][:id])
    end

    def get_drugs(params)
      Array(params[:drugs]).map do |drug_name|
        Drug.where('lower(name) = ?', drug_name.downcase).first
      end
    end

    def get_evidence_items(params)
      Array(params[:evidence_items]).map do |eid|
        EvidenceItem.find_by(id: eid)
      end
    end
  end
end
