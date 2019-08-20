module WithCountableEnum
  extend ActiveSupport::Concern

  included do
    def self.enum(opts = {})
      klass = self
      name = opts.keys.first
      plural_name = name.to_s.pluralize
      define_singleton_method "count_by_#{name}" do |filter = nil, join = nil|
        klass.group(name)
          .joins(join)
          .where(filter)
          .count
          .each_with_object({}) { |(k,v), h| next if k.nil?; h[self.send(plural_name).key(k).downcase] = v }
      end
      super
    end
  end
end
