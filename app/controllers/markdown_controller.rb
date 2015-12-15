class MarkdownController < ApplicationController
  actions_without_auth :render

  def render
    (to_render, status) = if (markdown = params[:markdown]).blank?
      [{ error: "No markdown supplied" }, :bad_request]
                          else
                            [{
                                markdown: markdown,
                                html: UserMarkupRenderer.render_markdown(markdown)
                              }, :ok ]
                          end
    render json: to_render, status: status
  end
end
