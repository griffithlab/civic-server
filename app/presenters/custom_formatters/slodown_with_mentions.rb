module CustomFormatters
  class SlodownWithMentions < Slodown::Formatter
    #dependent on markdown formatter
    def link_mentions
      @current = mentioned_users.inject(@current) do |text, user|
        text.gsub(/@#{user.username}\b/i, mention_link(user))
      end
      self
    end

    private
    def mentioned_users
      Actions::ExtractMentions.new(@current)
        .perform
        .mentioned_users
    end

    def mention_link(user)
      "[@#{user.username}](/#/users/#{user.id}/profile)"
    end
  end
end
