require 'set'

module Actions
  class ExtractMentions
    include Actions::Transactional
    attr_reader :mentioned_users, :invalid_mentions, :text, :regexp

    def initialize(text)
      @text = text
      @mentioned_users = Set.new
      @invalid_mentions = Set.new
    end

    def execute
      find_matches
      invalid_mentions.each do |mention|
        errors << "Username #{mention} was mentioned but not found"
      end
    end

    private
    def find_matches
      text.scan(self.class.regexp) do |(username)|
        if user = User.find_by(username: username)
          mentioned_users << user
        else
          invalid_mentions << username
        end
      end
    end

    def self.regexp
      @regexp ||= Regexp.new(/\s@([^@\s]+)\b/)
    end
  end
end