require 'set'

module Actions
  class ExtractRoleMentions
    include Actions::Transactional
    attr_reader :mentioned_roles, :text, :regexp

    def initialize(text)
      @text = text
      @mentioned_roles = Set.new
    end

    def valid_text_for_mentioned_roles
      mentioned_roles + mentioned_roles.map(&:pluralize)
    end

    def mentioned_role_values
      mentioned_roles.map { |rolename| User.roles[rolename] }.compact
    end

    private
    def execute
      find_matches
    end

    def find_matches
      text.scan(self.class.regexp) do |(rolename)|
        if self.class.valid_roles.include?(rolename)
          @mentioned_roles << rolename.singularize
        end
      end
    end

    def self.valid_roles
      unless @valid_roles
        @valid_roles = Role.mentionable_roles + Role.mentionable_roles.map(&:pluralize)
      end
      @valid_roles
    end

    def self.regexp
      @regexp ||= Regexp.new(/\s*@([^@\s']+)\b/)
    end
  end
end
