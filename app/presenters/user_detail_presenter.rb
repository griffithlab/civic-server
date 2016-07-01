class UserDetailPresenter < UserPresenter
  def as_json(opts = {})
    super.merge({
      domain_expert_tags: user.domain_expert_tags.map { |t| DomainExpertTagPresenter.new(t) }
    })
  end
end
