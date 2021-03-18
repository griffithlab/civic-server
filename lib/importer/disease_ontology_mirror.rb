module Importer
  class DiseaseOntologyMirror
    attr_reader :parser, :version, :unprocessed_doids

    def initialize(path, version = Time.now.utc.iso8601)
      @parser = Obo::Parser.new(path)
      @version = version
      @unprocessed_doids = Disease.where.not(doid: nil).pluck(:doid)
    end

    def import
      parser.elements.each do |elem|
        next unless valid_entry?(elem)
        create_object_from_entry(elem)
      end
      delete_unprocessed_diseases
    end

    private
    def populate_ontology_entry
      Ontology.where(name: 'disease_ontology').first_or_create.tap do |o|
        o.version = version
        o.import_date = DateTime.now
        o.permalink_format = "http://purl.obolibrary.org/obo/DOID_"
        o.civic_class = 'Disease'
        o.id_name = 'doid'
        o.save
      end
    end

    def valid_entry?(entry)
      entry['id'].present? && entry['name'].present? && entry.respond_to?(:name) && entry.name == 'Term'
    end

    def create_object_from_entry(entry)
      display_name = Disease.capitalize_name(entry['name'])
      name = entry['name']
      doid = parse_doid(entry['id'])
      synonyms = process_synonyms(entry['synonym'])
      disease = if ( d = ::Disease.find_by(doid: doid) )
                  d
                elsif ( d = ::Disease.find_by(name: name) )
                  d
                else ( d = ::Disease.where(doid: doid).first_or_initialize)
                  d
                end
      disease.name = name
      disease.doid = doid
      disease.display_name = display_name
      disease.save
      assign_synonyms(disease, synonyms)
      unprocessed_doids.delete(disease.doid)
    end

    def process_synonyms(synonym_element)
      vals = if synonym_element.blank?
        []
      elsif synonym_element.is_a?(String)
        [extract_synonym(synonym_element)]
      elsif synonym_element.is_a?(Array)
        synonym_element.map { |s| extract_synonym(s) }
      end
      vals.compact
    end

    def extract_synonym(value)
      if match_data = value.match(/^"(?<name>.+)" EXACT \[.*\]$/)
        Disease.capitalize_name(match_data[:name])
      else
        nil
      end
    end

    def parse_doid(doid)
      doid.gsub('DOID:', '')
    end

    def assign_synonyms(disease, synonyms)
      synonyms.each do |syn|
        disease_alias = ::DiseaseAlias.where(name: syn).first_or_create
        current_aliases = disease.disease_aliases.to_a
        current_aliases << disease_alias
        disease.disease_aliases = current_aliases.uniq
      end
      removed_aliases = disease.disease_aliases.map{|a| a.name} - synonyms
      removed_aliases.each do |a|
        alias_to_remove = DiseaseAlias.find_by(name: a)
        disease.disease_aliases.delete(alias_to_remove)
      end
    end

    def delete_unprocessed_diseases
      unprocessed_doids.each do |doid|
        d = Disease.find_by(doid: doid)
        if d.evidence_items.count == 0 and d.assertions.count == 0
          d.disease_aliases.clear
          d.delete
        else
          uri = URI(url_from_doid(d.doid))
          resp = Net::HTTP.get_response(uri)
          if resp.code == '200'
            #DOID exists but isn't in the cancer slim file
            if ['3852', '8432', '0060474', '3883', '14175', '3012', '0111503', '13481', '3205', '0111359', '0080894', '0111278'].include? d.doid
              #Non-cancer diseases don't belong in the cancer slim file and
              #need to be updated using the data returned by the API
              metadata = JSON.parse(resp.body)
              d.display_name = Disease.capitalize_name(metadata['name'])
              d.name = metadata['name']
              synonyms = process_synonyms(metadata['synonym'])
              assign_synonyms(d, synonyms)
            else
              title = 'DO term not in cancer slim file'
              text =  "This entity uses a DO term that is not in the cancer slim file \"#{d.name}\" (DOID:#{d.doid})"
              add_flags(d, title, text)
            end
          else
            if resp.code == '400'
              #DOID is obsolete
              title = 'Deprecated DO term'
              text = "This entity uses a deprecated DO term \"#{d.name}\" (DOID:#{d.doid})"
              add_flags(d, title, text)
            else
              raise StandardError.new(res.body)
            end
          end
        end
      end
      Disease.where(doid: nil).each do |d|
        if d.evidence_items.count == 0 and d.assertions.count == 0
          d.disease_aliases.clear
          d.delete
        elsif ['Solid Tumor', 'Ventricular Dysfunction', 'Acute Mountain Sickness', 'Glioma', 'Low Bone Mineral Density'].include? d.name
          next
        else
          #Disease needs to have its DOID backfilled or needs to be added to
          #the DO to being with
          title = 'Disease not in DO'
          text = "This entity uses a disease term without an associated DOID \"#{d.name}\""
          add_flags(d, title, text)
        end
      end
    end

    def url_from_doid(doid)
      URI.parse("https://www.disease-ontology.org/api/metadata/DOID:#{doid}/")
    end

    def add_flags(disease, title, text)
      civicbot_user = User.find(385)
      (disease.evidence_items + disease.assertions).each do |obj|
        if obj.flags.select{|f| f.state == 'open' && f.comments.select{|c| c.title == title && c.user_id = 385}.count > 0}.count == 0
          result = Flag.create_for_flaggable(civicbot_user, obj, nil)
          if result.succeeded?
            Comment.create(title: title, text: text, user: civicbot_user, commentable: result.flag)
          end
        end
      end
    end
  end
end
