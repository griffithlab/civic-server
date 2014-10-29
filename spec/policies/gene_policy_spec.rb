require 'rails_helper'

describe GenePolicy do
  before :each do
    @user = Fabricate(:user)
    @admin = Fabricate(:user, roles: [ Role.where(name: 'admin').first_or_create! ])
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
