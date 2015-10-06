class VariantGroup < ActiveRecord::Base
  include Moderated
  include Subscribable
  include WithAudits
  include SoftDeletable
  include WithSingleValueAssociations
  acts_as_commentable

  has_many :variant_group_variants
  has_many :variants, through: :variant_group_variants

  display_by_attribute :variant, :name

  def self.view_scope
    includes(variants: [:gene])
  end

  def generate_additional_changes(changes)
    if changes[:variants].blank?
      {}
    else
      new_variants = get_variants_from_list(changes[:variants].reject(&:blank?)).map(&:id).sort.uniq
      existing_variants = self.variants.map(&:id).sort.uniq
      if new_variants == existing_variants
        {}
      else
        {
          variant_ids: [existing_variants, new_variants]
        }
      end
    end
  end

  def get_variants_from_list(ids)
    Variant.where(id: ids).tap do |new_variants|
      unless new_variants.count == ids.size
        raise ListMembersNotFoundError.new(ids)
      end
    end
  end

  def validate_additional_changeset(changes)
    if changes['variant_ids'].present?
      Variant.where(id: changes['variant_ids'][0]).sort == self.variants.uniq.sort
    else
      true
    end
  end

  def apply_additional_changes(changes)
    if changes['variant_ids'].present?
      self.variant_ids = Variant.find(changes['variant_ids'][1]).map(&:id)
    end
  end

  def additional_changes_fields
    ['variants', 'variant_ids']
  end

  def state_params
    {
      variant_group: {
        name: self.name,
        id: self.id
      }
    }
  end
end
