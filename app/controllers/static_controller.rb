class StaticController < ApplicationController
  skip_before_filter :ensure_signed_in

  def test_unprotected
    msg = 'Hi, you should get this'
    respond_to do |format|
      format.json { render json: { msg: msg } }
      format.html { render text: msg }
    end
  end
end
