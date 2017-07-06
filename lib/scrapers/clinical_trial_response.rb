module Scrapers
  class ClinicalTrialResponse
    attr_reader :xml
    def initialize(response_body)
      @xml = Nokogiri::XML(response_body)
    end

    def nct_id
      xpath_contents_or_nil('//id_info/nct_id')
    end

    def name
      xpath_contents_or_nil('//brief_title')
    end

    def description
      if desc = xpath_contents_or_nil('//brief_summary/textblock')
        desc.gsub(/\s+/, ' ').strip
      else
        nil
      end
    end

    private
    def xpath_contents_or_nil(path)
      if (node = xml.xpath(path).text).blank?
        nil
      elsif block_given?
        yield node
      else
        node
      end
    end
  end
end
