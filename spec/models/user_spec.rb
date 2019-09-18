require 'rails_helper'

describe User do

  it 'should not allow a user with a blank email to be an editor' do
    user = Fabricate(:user)
    user.email = nil
    user.role = 'editor'
    saved = user.save

    expect(saved).to be false
    expect(user.errors.details[:email]).to be_truthy
  end
end
