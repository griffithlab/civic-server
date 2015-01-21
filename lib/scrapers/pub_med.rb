require 'net/http'
require 'uri'

module Scrapers
  class PubMed
    def self.run
      ActiveRecord::Base.transaction do
        ::Source.all.each do |item|
          item.description = get_citation_from_pubmed_id(item.pubmed_id)
          item.save
        end
      end
    end

    def self.get_citation_from_pubmed_id(pubmed_id)
      url = url_for_pubmed_id(pubmed_id)
      req = Net::HTTP::Get.new(url.request_uri)
      res = Net::HTTP.start(url.host, url.port) { |http| http.request(req) }
      raise res unless res.code == '200'
      extract_citation_from_page_text(res.body)
    rescue
      ''
    end

    def self.url_for_pubmed_id(pubmed_id)
      URI.parse("http://www.ncbi.nlm.nih.gov/pubmed/?term=#{pubmed_id}&report=docsum&format=text")
    end

    def self.extract_citation_from_page_text(page_text)
      Nokogiri::XML.parse(page_text)
        .search('pre')
        .first
        .text
        .gsub("\n", ' ')
        .sub(/\d:\s/, '')
        .gsub(/\s+/, ' ')
        .strip
    end
  end
end
