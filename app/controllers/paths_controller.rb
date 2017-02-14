class PathsController < ApplicationController
  actions_without_auth :static
  skip_analytics :static

  def static
    #Just serve index.html, let angular figure out the requested state
    render file: File.join(Rails.root, 'public', 'index.html'), layout: false
  end
end
