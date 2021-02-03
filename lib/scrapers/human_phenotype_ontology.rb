module Scrapers
  class HumanPhenotypeOntology
    def self.get_name_from_hpo_id(hpo_id)
      resp = Util.make_get_request(url())
      extract_class_name_from_response_for_hpo_id(resp, hpo_id)
    rescue
      ''
    end

    def self.scrape_all()
      resp = Util.make_get_request(url())
      xml = Nokogiri::XML(resp)
      i = 0
      xml.xpath("//owl:Class[@rdf:about]").each do |row|
        about = row.attributes['about'].value
        if about.starts_with?('http://purl.obolibrary.org/obo/HP_')
          hpo_id = about[/http:\/\/purl\.obolibrary\.org\/obo\/(HP_[0-9]*)/, 1]
          hpo_id = hpo_id.sub('_', ':')
          name = row.at_xpath('rdfs:label').text
          Phenotype.create(hpo_id: hpo_id, hpo_class: name)
          i = i+  1
        end
      end
      puts(i)
    end

    def self.update
      resp = Util.make_get_request(url())
      xml = Nokogiri::XML(resp)
      xml.xpath("//owl:Class[@rdf:about]").each do |row|
        about = row.attributes['about'].value
        if about.starts_with?('http://purl.obolibrary.org/obo/HP_')
          hpo_id = about[/http:\/\/purl\.obolibrary\.org\/obo\/(HP_[0-9]*)/, 1]
          hpo_id = hpo_id.sub('_', ':')
          name = row.at_xpath('rdfs:label').text
          if !row.at_xpath('owl:deprecated').nil? && row.at_xpath('owl:deprecated').text == 'true'
            p = Phenotype.find_by(hpo_id: hpo_id)
            if !p.nil?
              if p.evidence_items.count == 0 && p.assertions.count == 0
                p.delete
              else
                civicbot_user = User.find(385)
                (p.evidence_items + p.assertions).each do |obj|
                  if obj.flags.select{|f| f.state == 'open' && f.comments.select{|c| c.title == "Deprecated HPO term" && c.user_id = 385}.count > 0}.count == 0
                    result = Flag.create_for_flaggable(civicbot_user, obj, nil)
                    if result.succeeded?
                      Comment.create({title: 'Deprecated HPO term', text: "This entity uses a deprecated HPO term \"#{name}\" (#{hpo_id})", user: civicbot_user, commentable: result.flag})
                    end
                  end
                end
              end
            end
          else
            p = Phenotype.where(hpo_id: hpo_id).first_or_create
            p.hpo_class = name
            p.save
          end
        end
      end
    end

    private
    def self.url
      "https://raw.githubusercontent.com/obophenotype/human-phenotype-ontology/master/hp.owl"
    end

    def self.extract_class_name_from_response_for_hpo_id(resp, hpo_id)
      xml = Nokogiri::XML(resp)
      hpo_id = hpo_id.sub(':', '_')
      node = xml.at_xpath("//owl:Class[@rdf:about=\"http://purl.obolibrary.org/obo/#{hpo_id}\"]")
      node.at_xpath('rdfs:label').text
    end
  end
end
