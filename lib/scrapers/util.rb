module Scrapers
  module Util
    def self.make_get_request(url)
      uri = URI(url)
      res = Net::HTTP.get_response(uri)
      raise StandardError.new(res.body) unless res.code == '200'
      res.body
    end
  end
end
