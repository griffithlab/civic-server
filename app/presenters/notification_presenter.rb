class NotificationPresenter
  attr_reader :notification, :adaptor

  def initialize(notification)
    @notification = notification
    @adaptor = self.class.adaptor_for_notification(notification)
  end

  def as_json(opts = {})
    {
      type: notification.type
    }.merge(adaptor.new(notification).to_json)
  end

  def self.adaptor_for_notification(n)
    @presenters_hash ||= Notification.types.keys.each_with_object({}) do |type, h|
      h[type] = "NotificationAdaptors::#{type.classify}Presenter".constantize
    end
    @presenters_hash[n.type]
  end
end
