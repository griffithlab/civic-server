class ProposedRevision < ActiveRecord::Base
  belongs_to :user
  belongs_to :revisable, polymorphic: true
end
