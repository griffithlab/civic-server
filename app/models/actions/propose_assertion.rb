module Actions
  class ProposeAssertion
    include Actions::Transactional
    attr_reader :assertion, :originating_user, :direct_attributes, :relational_attributes, :organization

    def initialize(direct_attributes, relational_attributes, originating_user, organization)
      @direct_attributes = direct_attributes
      @relational_attributes = relational_attributes
      @originating_user = originating_user
      @organization = organization
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
        item.acmg_codes = get_acmg_codes(relational_attributes)
        item.phenotypes = get_phenotypes(relational_attributes)
        item.nccn_guideline = get_nccn_guideline(relational_attributes)
        item.save
      end
      Event.create(
        action: 'assertion submitted',
        originating_user: originating_user,
        subject: assertion,
        organization: organization
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
      Array(params[:drugs]).map{ |drug_name| Drug.where('lower(name) = ?', drug_name.downcase).first }.sort.uniq
    end

    def get_evidence_items(params)
      Array(params[:evidence_items]).map do |eid|
        EvidenceItem.find_by(id: eid)
      end
    end

    def get_acmg_codes(params)
      Array(params[:acmg_codes]).map{ |acmg_code| AcmgCode.find_by(code: acmg_code) }.sort.uniq
    end

    def get_phenotypes(params)
      Array(params[:phenotypes]).map{ |hpo_class| Phenotype.find_by(hpo_class: hpo_class) }.sort.uniq
    end

    def get_nccn_guideline(params)
      NccnGuideline.find(params[:nccn_guideline][:id])
    end
  end
end
