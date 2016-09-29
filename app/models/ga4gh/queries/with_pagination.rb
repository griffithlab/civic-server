require 'base64'

module Ga4gh; module Queries;
  module WithPagination
    def next_page_token(query)
      if query.total_count > current_page_size * current_page
        page_size = current_page_size
        page_number = current_page
        Base64.encode64({ 's' => page_size, 'n' => page_number + 1 }.to_json).strip
      else
        nil
      end
    end

    def paginate_query(query)
      query.page(current_page).per(current_page_size)
    end

    def current_page
      current_pagination_params['n'] || 1
    end

    def current_page_size
      request['pageSize'] || current_pagination_params['s']
    end

    private
    def current_pagination_params
      if @current_pagination_params
        @current_pagination_params
      else
        @current_pagination_params = if (token = request['pageToken'])
          JSON.parse(Base64.decode64(token))
        else
          { 'n' => 1, 's' => 25 }
        end
      end
    end
  end
end; end
