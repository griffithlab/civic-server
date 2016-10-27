class LinksController < ApplicationController
  actions_without_auth :redirect
  skip_analytics :redirect

  def redirect
    router = FrontendRouter.new(params[:idtype] || params[:idType], params[:id])
    url = router.url
    if url.blank?
      head :bad_request
    else
      redirect_to url
    end
  end
end
