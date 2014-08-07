require 'rails_helper'

describe AngularCsrfToken do

  controller(ActionController::Base) do
    include AngularCsrfToken

    def fake_post
      head :ok
    end

    def fake_get
      head :ok
    end
  end

  before do
    routes.draw do
        get 'fake_get' => 'anonymous#fake_get'
        post 'fake_post' => 'anonymous#fake_post'
    end

    controller.allow_forgery_protection = true
    @expected_token = controller.send(:form_authenticity_token)
  end

  it 'should set the csrf token on get requests' do
    get :fake_get
    expect(response.cookies['XSRF-TOKEN']).to eq @expected_token
    expect(response.status).to eq 200
  end

  it 'should raise an error when the token is not present on a post request' do
    post :fake_post
    expect(response.status).to eq 422
  end

  it 'should raise an error when the token is present but incorrect' do
    request.headers['X-XSRF-TOKEN'] = 'turkey'
    post :fake_post
    expect(response.status).to eq 422
  end

  it 'should allow post requests with a correct token' do
    request.headers['X-XSRF-TOKEN'] = @expected_token
    post :fake_post
    expect(response.status).to eq 200
  end

end
