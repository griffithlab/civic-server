require 'rails_helper'

describe 'notifying mentioned users' do

  before :each do
    @editor = Fabricate(:user, role: 'editor')
    @admin = Fabricate(:user, role: 'admin')
    @curator = Fabricate(:user)
    @originating_user = Fabricate(:user)
    @event = Event.create(action: 'test', originating_user: @originating_user, subject: Fabricate(:gene))
  end

  it 'should allow mentions by username' do
    text = "hey @#{@curator.username}"
    NotifyMentioned.new.perform(text, @originating_user, @event)
    expect(Notification.where(notified_user: @curator).size).to eq 1
    expect(Notification.count).to eq 1
  end

  it 'should allow mentions by role' do
    text = "hey @admin"
    NotifyMentioned.new.perform(text, @originating_user, @event)
    expect(Notification.where(notified_user: @admin).size).to eq 1
    expect(Notification.count).to eq 1
  end

  it 'should not allow mentions by the role "curator"' do
    text = "hey @curator"
    NotifyMentioned.new.perform(text, @originating_user, @event)
    expect(Notification.count).to eq 0
  end

  it 'should also allow plural role names to be mentioned' do
    text = "hey @admins"
    NotifyMentioned.new.perform(text, @originating_user, @event)
    expect(Notification.where(notified_user: @admin).size).to eq 1
    expect(Notification.count).to eq 1
  end

  it 'should include admins when editors are mentioned' do
    text = "hey @editors"
    NotifyMentioned.new.perform(text, @originating_user, @event)
    expect(Notification.where(notified_user: @admin).size).to eq 1
    expect(Notification.where(notified_user: @editor).size).to eq 1
    expect(Notification.count).to eq 2
  end


  it 'should not send notifications to the user who generated the notification' do
    text = "hey @editors"
    NotifyMentioned.new.perform(text, @editor, @event)
    expect(Notification.where(notified_user: @admin).size).to eq 1
    expect(Notification.where(notified_user: @editor).size).to eq 0
    expect(Notification.count).to eq 1
  end
end
