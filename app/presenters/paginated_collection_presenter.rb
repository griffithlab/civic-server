class PaginatedCollectionPresenter
  attr_reader :collection, :request, :item_presenter_type, :pagination_presenter_type, :additional_meta

  def initialize(collection, request, item_presenter_type, pagination_presenter_type, additional_meta = {})
    @collection = collection
    @request = request
    @item_presenter_type = item_presenter_type
    @pagination_presenter_type = pagination_presenter_type
    @additional_meta = additional_meta
  end

  def as_json(options = {})
    {
      _meta: pagination_presenter_type.new(collection, request).as_json.merge(additional_meta),
      records: collection.map { |item| item_presenter_type.new(item) }
    }
  end
end
