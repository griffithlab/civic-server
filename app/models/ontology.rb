class Ontology < ActiveRecord::Base
  def self.for_class(klass)
    ontology_name = case klass
    when Disease
      'disease_ontology'
    when VariantType
      'Sequence Ontology'
    else
      nil
    end
    self.find_by(name: ontology_name)
  end
end
