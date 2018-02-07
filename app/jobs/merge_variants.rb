class MergeVariants < ActiveJob::Base
  attr_reader :remaining_variant, :removed_variant

  def perform(remaining_variant, removed_variant)
    @remaining_variant = remaining_variant
    @removed_variant = removed_variant

    ActiveRecord::Base.transaction do
      transfer_evidence_items
      remove_suggested_changes
      transfer_flags
      transfer_subcriptions
      remove_variant
    end
  end

  private
  def transfer_evidence_items
    removed_variant.evidence_items.each do |ei|
      ei.variant = remaining_variant
      ei.save
    end
  end

  def remove_suggested_changes
    removed_variant.suggested_changes.each do |sc|
      sc.delete
      sc.save
    end
  end

  def transfer_flags
    removed_variant.flags.each do |f|
      comment = f.comments.first
      comment.comment = "(Merged from #{removed_variant.display_name}) #{f.comments.first.comment}"
      comment.save
      f.flaggable = remaining_variant
      f.save
    end
  end

  def transfer_subcriptions
    existing_users = Set.new(
      Subscription.where(subscribable: remaining_variant).pluck(:user_id)
    )

    Subscription.where(subscribable: removed_variant).all.each do |s|
      Notification.where(subscription_id: s.id).destroy_all
      if existing_users.include?(s.user_id)
        s.destroy
      else
        s.subscribable = remaining_variant
        s.save
      end
    end
  end

  def remove_variant
    removed_variant.soft_delete!
  end
end
