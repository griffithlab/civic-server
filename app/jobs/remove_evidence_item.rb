class RemoveEvidenceItem < ApplicationJob
  attr_reader :evidence_item

  def perform(evidence_item)
    @evidence_item = evidence_item
    ActiveRecord::Base.transaction do
      remove_suggested_changes
      remove_flags
      remove_audits
      remove_events
      remove_comments
      remove_item
    end
  end

  private
  def remove_suggested_changes
    evidence_item.suggested_changes.each do |sc|
      sc.audits.delete_all
      sc.comments.delete_all
      subscriptions = sc.subscriptions
      events = sc.events
      Notification.where(subscription: subscriptions).delete_all
      Notification.where(event: events).delete_all
      sc.subscriptions.delete_all
      sc.events.delete_all
    end
    evidence_item.suggested_changes.delete_all
  end

  def remove_flags
    evidence_item.flags.each do |f|
      f.comments.delete_all
    end
    evidence_item.flags.delete_all
  end

  def remove_audits
    evidence_item.audits.delete_all
  end

  def remove_events
    events = evidence_item.events
    subscriptions = evidence_item.subscriptions
    Notification.where(event: events).delete_all
    Notification.where(subscription: subscriptions).delete_all
    evidence_item.events.delete_all
    evidence_item.subscriptions.delete_all
  end

  def remove_comments
    evidence_item.comments.delete_all
  end

  def remove_item
    evidence_item.destroy
  end
end
