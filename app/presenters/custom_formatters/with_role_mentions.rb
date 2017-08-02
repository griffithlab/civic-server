module CustomFormatters
  module WithRoleMentions
    def highlight_role_mentions
      @current = mentioned_roles.inject(@current) do |text, role|
        text.gsub(/@#{role}\b/i, mention_span(role))
      end
      self
    end

    private
    def mentioned_roles
      Actions::ExtractRoleMentions.new(@current)
        .perform
        .mentioned_roles
    end

    def mention_span(role)
      "<span class=\"hl-macro hl-macro-#{role.pluralize}\">@#{role.pluralize}</span>"
    end
  end
end
