module Badges
  class Rules
    include Badges::RuleSupport

    def initialize
      super

      #Define your rules here
      grant 'Commenter', on: 'gene_comments#create' do |user, params|
        user.comments.count >= 1
      end
    end
  end
end
