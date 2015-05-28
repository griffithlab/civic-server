class VariantGroup < ActiveRecord::Base
  include Moderated
  include Subscribable
  include WithAudits
  acts_as_commentable

  has_many :variant_group_variants
  has_many :variants, through: :variant_group_variants

  def self.view_scope
    includes(variants: [:gene])
  end

  def generate_additional_changes(changes)
    new_variants = changes[:variants]
    if new_variants.blank?
      {}
    else
      new_variants = new_variants.reject(&:blank?)
      validate_variant_name_list(new_variants)
      {
        variants: [self.variants.map(&:name).sort, new_variants.sort]
      }
    end
  end

  def validate_variant_name_list(names)
    unless Variant.where(name: names).count == names.size
      raise ListMembersNotFoundError.new(names)
    end
  end

  def validate_additional_changeset(changes)
    if changes['variants'].present?
      Variant.where(name: changes['variants'][0]).sort == self.variants.uniq.sort
    else
      true
    end
  end

  def apply_additional_changes(changes)
    if changes['variants'].present?
      self.variant_ids = Variant.where(name: changes['variants'][1]).pluck(:id)
    end
  end

  def additional_changes_fields
    ['variants']
  end
end
