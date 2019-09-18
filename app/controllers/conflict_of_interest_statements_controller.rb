class ConflictOfInterestStatementsController < ApplicationController

  def index
    authorize ConflictOfInterestStatement.new
    render json: current_user.conflict_of_interest_statements.map { |coi| ConflictOfInterestPresenter.new(coi) }
  end

  def create
    authorize ConflictOfInterestStatement.new
    ConflictOfInterestStatement.create(coi_params.merge(user_id: current_user.id))
  end

  private
  def coi_params
    params.permit(:coi_present, :coi_statement)
  end
end
