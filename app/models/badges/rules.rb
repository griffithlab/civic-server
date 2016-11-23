module Badges
  class Rules
    include Badges::RuleSupport

    def initialize
      super
      grant 'Commenter', on: 'gene_comments#create' do |user, params|
        user.comments.count >= 1
      end
    end
  end
end
