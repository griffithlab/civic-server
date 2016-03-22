class PaginationPresenter
  attr_reader :items, :request

  def initialize(items, request)
    @items = items
    @request = request
  end

  def as_json(options = {})
    {
      current_page: items.current_page,
      per_page: page_size,
      total_pages: items.num_pages,
      total_count: items.total_count,
      links: links
    }
  end

  private
  def links
    {}.tap do |links|
      links['next'] = if items.last_page?
                        nil
                      else
                        next_page_path
                      end
      links['previous'] = if items.first_page?
                            nil
                          else
                            previous_page_path
                          end
    end
  end

  def next_page_path
    path = base_url
    path.query = URI.encode_www_form({ page: items.current_page + 1, count: page_size })
    path.to_s
  end

  def previous_page_path
    path = base_url
    path.query = URI.encode_www_form({ page: items.current_page - 1, count: page_size })
    path.to_s
  end

  def page_size
    if count = request.params[:count]
      count
    else
      items.size
    end
  end

  def base_url
    URI.parse(request.url)
  end
end