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

    def path
      raise StandardError.new('implement in subclass')
    end
  end
end
