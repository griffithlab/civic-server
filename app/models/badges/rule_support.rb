module Badges
  module RuleSupport
    attr_reader :handlers

    def initialize
      @handlers = Hash.new { |h,k| h[k] = hash_with_array_default}
    end

    def grant(badge_name, opts = {}, &block)
      actions = Array(opts[:on]).map { |a| a.split('#') }
      raise StandardError.new('Provided block must accept two arguments') unless block.arity == 2
      actions.each do |(controller, action)|
        @handlers[controller][action] << Rule.new(badge_name, block)
      end
    end

    def find_applicable(controller, action)
      handlers[controller][action]
    end

    private
    def hash_with_array_default
      Hash.new { |h, k| h[k] = [] }
    end
  end

  class Rule < Struct.new(:badge_name, :block)
    def badge
      Badge.find_by(name: badge_name)
    end

    def applies?(user, params)
      block.call(user, params)
    end
  end
end
