module Importer
  module EntityMaps
    class Base
      def self.default_processor
        @default_processor ||= ->(x) { x.strip }
      end

      def self.default_processor_with_upcase
        @default_processor_with_upcase ||= ->(x) { default_processor.call(x).upcase }
      end

      def self.default_multivalue_processor
        @default_multivalue_processor ||= ->(x) { x.split(',').map(&:strip) }
      end

      def self.tsv_to_entity_properties_map
        raise 'Must implement in a subclass'
      end

      def self.mapped_entity_class
        raise 'Must implement in a subclass'
      end

      def self.multivalue_columns
        []
      end

      def self.get_entity_from_row(row, extra_properties = {})
        properties_list = get_properties_hash_from_row(row).map do |properties|
          properties.merge!(extra_properties)
          mapped_entity_class.where(properties).first || mapped_entity_class.new(properties)
        end

        if multivalue_columns.empty?
          properties_list.first
        else
          properties_list
        end
      end

      def self.get_properties_hash_from_row(row)
        property_hash = get_properties_simple(row)
        if multivalue_columns.empty?
          [property_hash]
        else
          objects = [property_hash.dup]
          multivalue_columns.each do |column|
            objects = flatten_properties(column, property_hash, objects)
          end
          objects
        end
      end

      def self.flatten_properties(column_name, property_hash, current_objs)
        [].tap do |new_objs|
          property_hash[column_name].each do |value|
            current_objs.each do |current_obj|
              current_obj.dup.tap do |new_obj|
                new_obj[column_name] = value
                new_objs << new_obj
              end
            end
          end
        end
      end

      def self.get_properties_simple(row)
        tsv_to_entity_properties_map.inject({}) do |object_properties, (column_name, (object_property, processor))|
          object_properties.tap { |h| h[object_property] = processor.call(row[column_name] || '') }
        end
      end
    end
  end
end
