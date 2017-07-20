class PanelsController < ApplicationController
  actions_without_auth :index, :show, :qualifying_variants
  def index
    render json: PipelineTypesPresenter.new
  end

  def show
    panel = CivicPanel.new(params[:minimum_score] || 30, params[:pipeline_tech])
    @panel = panel.presenter_classname.new(panel.variants)
    respond_to do |format|
      format.tsv do
         headers['Content-Disposition'] = "attachment; filename=\"civic_panel_export_#{panel.pipeline_type}_#{panel.score_cutoff}.tsv\""
      end
    end
  end

  def qualifying_variants
    panel = CivicPanel.new(params[:minimum_score] || 30, params[:pipeline_tech])
    variants = panel.variants
    render json: {
      _meta: {
        total_count: variants.size
      },
      records: variants.map { |v| VariantIndexPresenter.new(v) }
    }
  end
end