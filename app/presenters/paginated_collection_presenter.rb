class PaginatedCollectionPresenter
  attr_reader :collection, :request, :item_presenter_type, :pagination_presenter_type

  def initialize(collection, request, item_presenter_type, pagination_presenter_type)
    @collection = collection
    @request = request
    @item_presenter_type = item_presenter_type
    @pagination_presenter_type = pagination_presenter_type
  end

  def as_json(options = {})
    {
      _meta: pagination_presenter_type.new(collection, request),
      records: collection.map { |item| item_presenter_type.new(item) }
    }
  end
end
