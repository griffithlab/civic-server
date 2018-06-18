require 'net/http'

module ApiHelpers
  def get_json_response(url, params = {}, headers = {})
    JSON.parse make_get_request(url, params, headers)
  end

  def make_get_request(url, params = {}, headers = {})
    uri = URI(url)

    if params.any?
      uri.query = URI.encode_www_form(params)
    end

    req = Net::HTTP::Get.new(uri)
    headers.each do |key, val|
      req[key] = val
    end

    resp = Net::HTTP.start(uri.host, uri.port, :use_ssl => uri.scheme == 'https') { |http| http.request(req) }
    case resp.code.to_i
    when 200 || 201
      resp.body
    when (400..499)
      raise BadRequest.new(req, resp)
    when (500..599)
      raise RemoteServerError.new(req, resp)
    end
  end
end

class ApiFailure < StandardError
  def initialize(req, resp)
    @req = req
    @resp = resp
  end

  def message
    "Failed Attempt to reach #{@req.uri.host}#{@req.uri.path}. Result was status code #{@resp.code}, #{@resp.msg}"
  end
end

class BadRequest < ApiFailure
end

class RemoteServerError < ApiFailure
end
