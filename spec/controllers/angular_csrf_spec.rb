require 'rails_helper'

describe AngularCsrfToken do

  controller(ActionController::Base) do
    include AngularCsrfToken
    def fake_action
      redirect_to root_url
    end
  end

  before do
    routes.draw { get 'fake_action' => 'anonymous#fake_action' }
  end

  it 'should staple the csrf token into the cookies' do
    token = 'test token'
    expect(controller).to receive(:protect_against_forgery?).and_return(true)
    expect(controller).to receive(:form_authenticity_token).and_return(token)
    get :fake_action
    expect(response.cookies['XSRF-TOKEN']).to eq token
  end
end
