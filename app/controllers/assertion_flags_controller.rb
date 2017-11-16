class AssertionFlagsController < FlagsController
  private
  def flaggable
    Assertion.find_by!(id: params[:assertion_id])
  end
end
