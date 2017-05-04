module LinkAdaptors
  class Base
    attr_reader :obj

    def initialize(obj)
      @obj = obj
    end

    def markdown_link
      "[#{display_name}](#{path})"
    end

    def display_name
      raise StandardError.new('implement in subclass')
    end

    def raw_name
      raise StandardError.new('implement in subclass')
    end

    def path(opts = {})
      if opts[:include_domain]
        "https://civic.genome.wustl.edu#{base_path}"
      else
        base_path
      end
    end

    def short_path(opts = {})
      if opts[:include_domain]
        "https://civic.genome.wustl.edu#{auto_short_link}"
      else
        auto_short_link
      end
    end

    def auto_short_link
      "/links/#{self.class.name.demodulize.underscore.pluralize}/#{obj.id}"
    end
  end
end
