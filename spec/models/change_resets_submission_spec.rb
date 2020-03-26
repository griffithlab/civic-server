require 'rails_helper'

describe 'Entities that are un-rejected on change accept' do
  before(:each) do
    @entities = [Fabricate(:evidence_item), Fabricate(:assertion)]
    @user = Fabricate(:user)
    @org = Fabricate(:organization)
  end

  it "should change the entity back to 'submitted' if it was rejected and a change was accepted" do
    @entities.each do |entity|
      entity.description = 'foo'
      entity.suggest_change!(@user, {}, {})
      entity.status = 'rejected'
      entity.save
      change = entity.open_changes.first
      change.apply(@user, @org, false)
      entity.reload
      expect(entity.status).to eq('submitted')
    end
  end

  it "should change the entity back to 'submitted' if it was rejected and a new change is proposed" do
    @entities.each do |entity|
      entity.status = 'rejected'
      entity.save
      entity.description = 'foo'
      entity.suggest_change!(@user, {}, {})
      entity.reload
      expect(entity.status).to eq('submitted')
    end
  end

  it "should not change the status if the item was already accepted" do
    @entities.each do |entity|
      entity.status = 'accepted'
      entity.save
      entity.description = 'foo'
      entity.suggest_change!(@user, {}, {})
      change = entity.open_changes.first
      change.apply(@user, @org, false)
      entity.reload
      expect(entity.status).to eq('accepted')
    end
  end
end

