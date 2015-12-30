module WithCapitalizedName
  extend ActiveSupport::Concern

  included do
    before_save :format_name

    def self.capitalize_name(name)
      name.strip.split.map { |w| w[0] = w[0].upcase; w }.join(' ')
    end
  end

  def format_name
    self.name = self.class.capitalize_name(self.name)
  end
end