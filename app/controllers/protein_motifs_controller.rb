class ProteinMotifsController < ApplicationController
  skip_before_filter :ensure_signed_in, only: [:index]

  def index
    render json: ProteinMotif.all.map { |p| ProteinMotifPresenter.new(p) }
  end
end
