class DomainExpertTag < ActiveRecord::Base
  belongs_to :user
  belongs_to :domain_of_expertise, polymorphic: true
end
