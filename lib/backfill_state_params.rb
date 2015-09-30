class BackfillStateParams
  def self.run
    ActiveRecord::Base.transaction do
      Event.includes(:subject).find_each do |event|
        method_for_event_type(event.action).call(event)
      end
    end
  end

  private
  def self.method_for_event_type(event_type)
    @dispatch_table ||= {
      'commented' => :handle_comment,
      'accepted' => :handle_evidence_item,
      'submitted' => :handle_evidence_item,
      'change rejected' => :handle_suggested_change,
      'change accepted' => :handle_suggested_change,
      'change suggested' => :handle_suggested_change,
    }

    method(@dispatch_table[event_type])
  end

  def self.handle_comment(event)
    comment = comment_for_event(event)
    if comment
      event.state_params = { comment: { id: comment.id } }.merge(event.subject.state_params)
      event.save
    end
  end

  def self.handle_suggested_change(event)
    change = suggested_change_for_event(event)
    if change
      event.state_params = { suggested_change: { id: change.id } }.merge(event.subject.state_params)
      event.save
    end
  end

  def self.handle_evidence_item(event)
    event.state_params = event.subject.state_params
    event.save
  end

  def self.suggested_change_for_event(event)
    SuggestedChange.joins(:creator).find_by(
        moderated: event.subject,
        creator: event.originating_user,
        created_at: ((event.created_at - 10.seconds)..(event.created_at))
      )
  end

  def self.comment_for_event(event)
    Comment.find_by(
        commentable: event.subject,
        user: event.originating_user,
        created_at: ((event.created_at - 10.seconds)..(event.created_at))
      )
  end
end
