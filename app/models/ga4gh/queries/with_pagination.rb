require 'base64'

module Ga4gh; module Queries;
  module WithPagination
    def next_page_token
      page_size = current_page_size
      page_number = current_page
      Base64.encode64({ 's' => page_size, 'n' => page_number + 1 }.to_json).strip
    end

    def paginate_query(query)
      query.page(current_page).per(current_page_size)
    end

    def current_page
      current_page_size['n']
    end

    def current_page_size
      request.page_size || current_pagination_params['s']
    end

    private
    def current_pagination_params
      if @current_pagination_params
        @current_pagination_params
      else
        @current_pagination_params = if (token = request.page_token)
          JSON.parse(Base64.decode64(token))
        else
          { 'n' => 1, 's' => 25 }
        end
      end
    end
  end
end; end
