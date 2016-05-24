module WithDomainExpertTags
  extend ActiveSupport::Concern
  included do
    has_many :domain_expert_tags, as: :domain_of_expertise
    has_many :domain_experts, through: :domain_expert_tags, source: :user
  end
end
