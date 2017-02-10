class DomainExpertTagPresenter
  attr_reader :tag

  def initialize(tag)
    @tag = tag
  end

  def as_json(opts = {})
    {
      description: tag.description,
      created_at: tag.created_at,
      updated_at: tag.updated_at,
      domain_of_expertise_type: tag.domain_of_expertise_type,
      domain_of_expertise_id: tag.domain_of_expertise_id,
      state_params: state_params
    }
  end

  private
  def state_params
    if tag.domain_of_expertise.respond_to?(:state_params)
      tag.domain_of_expertise.state_params
    else
      {}
    end
  end

end
