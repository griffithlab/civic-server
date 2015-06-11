require 'rails_helper'

describe GenePolicy do
  before :each do
    @user = Fabricate(:user)
    @admin = Fabricate(:user)
    @admin.make_admin!
    @gene = Fabricate(:gene)
  end
  subject { described_class }

  permissions :create? do
    it 'should allow any registered user to create a gene' do
      expect(subject).to permit(@user, @gene)
      expect(subject).to permit(@admin, @gene)
    end
  end

  permissions :update? do
    it 'should only allow admins to update genes directly' do
      expect(subject).not_to permit(@user, @gene)
      expect(subject).to permit(@admin, @gene)
    end
  end

  permissions :destroy? do
    it 'should only allow admins to destroy genes' do
      expect(subject).not_to permit(@user, @gene)
      expect(subject).to permit(@admin, @gene)
    end
  end
end
