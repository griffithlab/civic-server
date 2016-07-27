class AuthorsSource < ActiveRecord::Base
  belongs_to :source
  belongs_to :author

  delegate :fore_name, to: :author
  delegate :last_name, to: :author
end
