module Scrapers
  class EnsemblRest
    def self.get_gene_name_for_transcript(transcript)
      resp = Util.make_get_request(url_from_transcript(transcript))
      extract_gene_symbol_from_response(resp)
    rescue
      ''
    end

    def self.get_gene_id_for_transcript(transcript)
      resp = Util.make_get_request(url_from_transcript(transcript))
      extract_gene_id_from_response(resp)
    rescue
      ''
    end

    def self.get_exon_coordinates_for_gene_id(gene_id)
      resp = Util.make_get_request(exon_url_from_gene_id(gene_id))
      extract_exon_coordinates_from_response(resp)
    end

    def self.url_from_transcript(transcript)
      "http://grch37.rest.ensembl.org/overlap/id/#{transcript}?feature=gene;content-type=application/json"
    end

    def self.exon_url_from_gene_id(gene_id)
      "http://grch37.rest.ensembl.org/overlap/id/#{gene_id}.json?feature=exon"
    end

    def self.extract_exon_coordinates_from_response(text)
      values = JSON.parse(text)
      if values.any?
        values.uniq { |v| v['exon_id'] }
      else
        []
      end
    end

    def self.extract_gene_symbol_from_response(text)
      values = JSON.parse(text)
      if values.any?
        values.select { |x| x['feature_type'] == 'gene' }.first['external_name']
      else
        ''
      end
    end

    def self.extract_gene_id_from_response(text)
      values = JSON.parse(text)
      if values.any?
        values.select { |x| x['feature_type'] == 'gene' }.first['id']
      else
        ''
      end
    end
  end
end
