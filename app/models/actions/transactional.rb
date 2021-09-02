module Actions
  module Transactional
    def errors
      @errors ||= []
    end

    def succeeded?
      errors.none?
    end

    def perform
      if ActiveRecord::Base.connection.transaction_open?
        execute
      else
        ActiveRecord::Base.transaction do
          execute
        end
      end
    rescue StandardError => e
      errors << e.message
    ensure
      return self
    end

    def execute
      raise 'Implement in class'
    end
  end
end

