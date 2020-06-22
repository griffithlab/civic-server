module Actions
  class ProposeEvidenceItem
    include Actions::Transactional
    include Actions::WithEvent
    attr_reader :evidence_item, :subject, :originating_user, :direct_attributes, :relational_attributes, :source_suggestion_id, :organization

    def initialize(direct_attributes, relational_attributes, source_suggestion_id, originating_user, organization)
      @direct_attributes = direct_attributes
      @relational_attributes = relational_attributes
      @originating_user = originating_user
      @source_suggestion_id = source_suggestion_id
      @organization = organization
    end

    private
    def execute
      direct_attributes[:status] = 'submitted'
      evidence_item = EvidenceItem.new(direct_attributes).tap do |item|
        item.variant = get_variant(relational_attributes)
        item.disease = get_disease(relational_attributes)
        item.source = get_source(relational_attributes)
        item.drugs = get_drugs(relational_attributes)
        item.phenotypes = get_phenotypes(relational_attributes)
        item.save
      end
      @subject = evidence_item
      create_event('submitted')
      evidence_item.subscribe_user(originating_user)
      process_source_suggestion
      @evidence_item = evidence_item
    end

    def state_params
      nil
    end

    def get_variant(params)
      #check case insensitive first
      if variant = Variant.joins(:gene)
        .where(genes: { id: params[:gene][:id] })
        .where('lower(variants.name) = ?', params[:variant][:name].downcase).first
        variant
      else
        Variant.create(gene: Gene.find_by(id: params[:gene][:id]), name: params[:variant][:name], description: '')
      end
    end

    def get_disease(params)
      if params[:noDoid]
        proposed_name = Disease.capitalize_name(params[:disease_name])
        Disease.where(display_name: proposed_name, name: proposed_name).first_or_create
      else
        Disease.find_by(id: params[:disease][:id])
      end
    end

    def get_source(params)
      source_type = params[:source][:source_type]
      citation_id = params[:source][:citation_id]
      source_type_int = Source.source_types[source_type]
      if found_source = Source.find_by(citation_id: citation_id, source_type: source_type_int)
        if not found_source.valid?
          errors << found_source.errors.messages
          return
        end
        found_source
      else
        Source.new(citation_id: citation_id, source_type: source_type).tap do |source|
          if not source.valid?
            errors << source.errors.messages
            return
          end
          if source_type == 'PubMed'
            Scrapers::PubMed.populate_source_fields(source)
          elsif source_type == 'ASCO'
            Scrapers::Asco.populate_source_fields(source)
          end
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

    def get_phenotypes(params)
      Array(params[:phenotypes]).map{ |hpo_class| Phenotype.find_by(hpo_class: hpo_class) }.sort.uniq
    end

    def process_source_suggestion
      if suggestion = SourceSuggestion.find_by(id: source_suggestion_id)
        suggestion.status = 'curated'
        suggestion.save
        if suggestion.source.status == 'partially curated' && source.source_suggestions.none? { |s| s.status == 'new' }
          suggestion.source.status = 'fully curated'
          suggestion.source.save
        end
      end
    end
  end
end
