module NotificationAdaptors
  class Base
    attr_reader :notification

    def initialize(notification)
      @notification = notification
    end
  end
end
