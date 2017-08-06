class AssertionAuditsController < AuditsController
  private
  def audited_object
    Assertion.find_by!(id: params[:assertion_id])
  end
end
