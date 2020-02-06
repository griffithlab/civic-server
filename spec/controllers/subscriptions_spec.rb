require 'rails_helper'

describe GeneCommentsController do
  it 'should allow for "meta" subscriptions to class/action combinations' do
    user = Fabricate(:user)
    gene = Fabricate(:gene)
    org = Fabricate(:organization)
    OnSiteSubscription.create(user: user, action_type: 'commented', action_class: 'Gene')
    controller.sign_in(user)

    post :create, params: { gene_id: gene.id, text: 'test text', title: 'test title', organization: { id: org.id } }

    expect(gene.comments.count).to eq 1
    #expect(Delayed::Worker.new.work_off).to eq [2,0]
    expect(Event.count).to eq 1
    expect(Feed.for_user(user, {}).user).to eq user
  end

  it 'should allow for direct subscriptions to "subscribables"' do
    user = Fabricate(:user)
    gene = Fabricate(:gene)
    org = Fabricate(:organization)
    OnSiteSubscription.create(user: user, subscribable: gene)
    controller.sign_in(user)

    post :create, params: { gene_id: gene.id, text: 'test text', title: 'test title', organization: { id: org.id } }

    expect(gene.comments.count).to eq 1
    #expect(Delayed::Worker.new.work_off).to eq [2,0]
    expect(Event.count).to eq 1
    expect(Feed.for_user(user, {}).user).to eq user
  end
end

describe EvidenceItemCommentsController do
  it 'should traverse the hierarchy of subscribables' do
    user = Fabricate(:user)
    gene = Fabricate(:gene)
    variant = Fabricate(:variant, gene: gene)
    evidence_item = Fabricate(:evidence_item, variant: variant)
    org = Fabricate(:organization)
    OnSiteSubscription.create(user: user, subscribable: gene)
    controller.sign_in(user)

    post :create, params: { evidence_item_id: evidence_item.id, text: 'test text', title: 'test title', organization: { id: org.id } }

    expect(evidence_item.comments.count).to eq 1
    #expect(Delayed::Worker.new.work_off).to eq [2,0]
    expect(Event.count).to eq 1
    expect(Feed.for_user(user, {}).user).to eq user
  end

  it 'should only send a single notification for a single event (de-dup subscriptions)' do
    user = Fabricate(:user)
    gene = Fabricate(:gene)
    variant = Fabricate(:variant, gene: gene)
    evidence_item = Fabricate(:evidence_item, variant: variant)
    org = Fabricate(:organization)
    OnSiteSubscription.create(user: user, subscribable: gene)
    OnSiteSubscription.create(user: user, subscribable: evidence_item)
    OnSiteSubscription.create(user: user, action_type: 'commented', action_class: 'Gene')
    controller.sign_in(user)

    post :create, params: { evidence_item_id: evidence_item.id, text: 'test text', title: 'test title', organization: { id: org.id } }

    expect(evidence_item.comments.count).to eq 1
    #expect(Delayed::Worker.new.work_off).to eq [2,0]
    expect(Event.count).to eq 1
    expect(Feed.for_user(user, {}).user).to eq user
  end
end
