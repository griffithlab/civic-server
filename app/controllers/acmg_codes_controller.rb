class AcmgCodesController < ApplicationController
  actions_without_auth :index

  def index
    acmg_codes = AcmgCode.page(params[:page]).per(params[:count])

    acmg_codes = code_search(acmg_codes)

    render json: acmg_codes.map { |l| { code: l.code, description: l.description } }
  end

  private
  def code_search(query)
    if params[:code].present?
      query.where('acmg_codes.code ILIKE :code', code: "#{params[:code]}%")
    else
      query
    end
  end
end
