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
      resp = Util.make_get_request(url_for_pubmed_id(pubmed_id))
      extract_citation_from_page_text(resp)
    rescue
      ''
    end

    private
    def self.url_for_pubmed_id(pubmed_id)
      "http://www.ncbi.nlm.nih.gov/pubmed/#{pubmed_id}?report=xml&format=text"
    end

    def self.extract_citation_from_page_text(page_text)
      xml = Nokogiri::XML(Nokogiri::XML(page_text).text)
      [get_first_author(xml), get_year(xml), get_journal(xml)].compact.join(', ')
    end

    def self.get_first_author(xml)
      author_name = xml.xpath('//AuthorList/Author[1]/LastName').text
      if author_name.blank?
        nil
      elsif xml.xpath('//AuthorList/Author').size > 1
        author_name + " et al."
      else
        author_name
      end
    end

    def self.get_year(xml)
      if (year = xml.xpath('//Journal/JournalIssue/PubDate/Year').text).blank?
        nil
      else
        year
      end
    end

    def self.get_journal(xml)
      if (journal = xml.xpath('//Journal/ISOAbbreviation').text).blank?
        nil
      else
        journal
      end
    end
  end
end
