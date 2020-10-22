class AddFlagColumn < ActiveRecord::Migration[5.2]

  def up
    [:evidence_items, :variants, :assertions, :variant_groups, :genes].each do |table|
      add_column table, :flagged, :boolean, null: false, index: true, default: false
    end

    [EvidenceItem, Variant, Assertion, VariantGroup, Gene].each do |klass|
      klass.find_each do |obj|
        if obj.flags.any? { |f| f.state == 'open' }
          obj.flagged = true
          obj.save
        end
      end
    end

  end

  def down
    [:evidence_items, :variants, :assertions, :variant_groups, :genes].each do |table|
      remove_column table, :flagged
    end
  end
end
