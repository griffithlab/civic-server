require 'spec_helper'
require 'rails_helper'

describe 'cloning subscriptions' do

  before :each do
    @to_user = Fabricate(:user)
    @from_user = Fabricate(:user)
    @gene = Fabricate(:gene)
    @gene2 = Fabricate(:gene)
    @variant = Fabricate(:variant)
  end

  it 'should copy subscriptions from one user to the other' do
    OnSiteSubscription.create(user: @from_user, subscribable: @gene)
    OnSiteSubscription.create(user: @from_user, subscribable: @variant)
    OnSiteSubscription.create(user: @to_user, subscribable: @gene2)

    CloneSubscriptions.new.perform(@from_user, @to_user)

    expect(@to_user.subscriptions.count).to eq(3)


    from_subs = @from_user.subscriptions.reload.map(&:subscribable).to_set
    to_subs = @to_user.subscriptions.reload.map(&:subscribable).to_set

    expect(to_subs.superset? from_subs).to be true
  end

  it 'should not create duplicated subscriptions' do
    OnSiteSubscription.create(user: @from_user, subscribable: @gene)
    OnSiteSubscription.create(user: @from_user, subscribable: @variant)
    OnSiteSubscription.create(user: @to_user, subscribable: @variant)
    OnSiteSubscription.create(user: @to_user, subscribable: @gene2)

    CloneSubscriptions.new.perform(@from_user, @to_user)

    expect(@to_user.subscriptions.count).to eq(3)


    from_subs = @from_user.subscriptions.reload.map(&:subscribable).to_set
    to_subs = @to_user.subscriptions.reload.map(&:subscribable).to_set

    expect(to_subs.superset? from_subs).to be true
  end

end

