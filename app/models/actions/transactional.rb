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
        begin
          execute
        rescue StandardError => e
          errors << e.message
          raise ActiveRecord::Rollback
        end
      end
      self
    end

    def execute
      raise 'Implement in class'
    end
  end
end
