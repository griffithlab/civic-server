module Scrapers
  class PubMedResponse
    attr_reader :xml
    def initialize(response_body)
      @xml = Nokogiri::XML(Nokogiri::XML(response_body).text)
    end

    def citation
      [first_author, year, journal].compact.join(', ')
    end

    def authors
      xml.xpath('//AuthorList/Author').to_a.each.with_index(1).map do |author, i|
        {
          fore_name: author.xpath('ForeName').text,
          last_name: author.xpath('LastName').text,
          author_position: i
        }
      end
    end

    def pmc_id
      xpath_contents_or_nil("//PubmedData/ArticleIdList/ArticleId[@IdType='pmc']")
    end

    def abstract
      xpath_contents_or_nil('//Abstract/AbstractText')
    end

    def first_author
      xpath_contents_or_nil('//AuthorList/Author[1]/LastName') do |author_name|
        if xml.xpath('//AuthorList/Author').size > 1
          author_name + " et al."
        else
          author_name
        end
      end
    end

    def publication_date
     [day, month, year]
    end

    def year
      xpath_contents_or_nil('//Journal/JournalIssue/PubDate/Year')
    end

    def month
      monthname = xpath_contents_or_nil('//Journal/JournalIssue/PubDate/Month')
      if monthname
        Date::ABBR_MONTHNAMES.index(monthname)
      else
        nil
      end
    end

    def day
      xpath_contents_or_nil('//Journal/JournalIssue/PubDate/Day')
    end

    def journal
      xpath_contents_or_nil('//Journal/ISOAbbreviation')
    end

    def full_journal_title
      xpath_contents_or_nil('//Journal/Title')
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
