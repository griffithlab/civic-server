require 'rails_helper'

describe SessionsController do

  def set_omniauth_params(provider = 'testing', uid = '123')
    request.env['omniauth.auth'] = {
      'provider' => provider,
      'uid' => uid,
      'info' => {
        'name' => 'test_name'
      }
    }
  end

  it 'should set the user id of the logged in user in the session on successful login' do
    provider = 'test'
    uid = 'test'
    set_omniauth_params(provider, uid)

    get :create, provider: 'testing'

    user = Authorization.find_by(provider: provider, uid: uid).user
    expect(controller.current_user).to eq(user)
    expect(controller.signed_in?).to be_truthy
    expect(controller.signed_out?).to be_falsey
  end

  it 'should find an existing authorization if there is one' do
    existing_auth = Fabricate(:authorization)
    set_omniauth_params(existing_auth.provider, existing_auth.uid)

    get :create, provider: 'testing'

    expect(Authorization.count).to eq 1
    expect(User.count).to eq 1
    expect(Authorization.find_by(provider: existing_auth.provider, uid: existing_auth.uid)).to eq existing_auth
  end

  it 'should keep a user signed in if they try to re-link an existing account' do
    existing_auth = Fabricate(:authorization)
    set_omniauth_params(existing_auth.provider, existing_auth.uid)
    controller.sign_in(existing_auth.user)

    get :create, provider: 'testing'

    expect(controller.current_user).to eq(existing_auth.user)
    expect(User.count).to eq 1
    expect(Authorization.count).to eq 1
  end

  it 'should allow multiple authorizations to be associated with the same user if the user is already logged in' do
    authorization = Fabricate(:authorization)
    additional_uid = 'newuid'
    additional_provider = 'newprovider'
    controller.sign_in(authorization.user)

    set_omniauth_params(additional_provider, additional_uid)

    get :create, provider: 'testing'

    authorizations = Authorization.where(user: authorization.user)
    expect(authorizations.size).to eq 2
    expect(authorizations).to include(authorization)
    expect(authorizations.select { |a| a.uid == additional_uid && a.provider == additional_provider }.size).to eq 1
  end

  it 'should create an authorization if one is not found' do
    Fabricate(:authorization)
    set_omniauth_params

    get :create, provider: 'testing'

    expect(Authorization.count).to eq 2
    expect(User.count).to eq 2
  end

  it 'should create a user for a new authorization' do
    set_omniauth_params

    get :create, provider: 'testing'

    expect(User.first).to be_truthy
  end

  it 'should clear the current user from the session on logout' do
    authorization = Fabricate(:authorization)
    controller.sign_in(authorization.user)
    expect(controller.signed_in?).to be_truthy

    get :destroy

    expect(controller.current_user).to be_nil
    expect(session[:user_id]).to be_nil
    expect(controller.signed_out?).to be_truthy
  end

end
