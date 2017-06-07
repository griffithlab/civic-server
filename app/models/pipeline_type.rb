class PipelineType < ActiveRecord::Base
  has_and_belongs_to_many :variant_types
end
