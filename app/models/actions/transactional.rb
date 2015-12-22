module Actions
  module Transactional
    def errors
      @errors ||= []
    end

    def succeeded?
      errors.none?
    end

    def perform
      ActiveRecord::Base.transaction do
        execute
      end
      self
    end

    def execute
      raise 'Implement in class'
    end
  end
end
