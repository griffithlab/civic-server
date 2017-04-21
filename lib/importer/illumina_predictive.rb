module Importer
  class IlluminaPredictive
    attr_reader :csv, :row_adaptor

    def initialize(file_path, row_adaptor, delim = ",", headers = true)
      raise "File #{file_path} doesn't exist!" unless File.exists?(file_path)
      contents = File.read(file_path).scrub.split("\n").uniq.join("\n")
      @row_adaptor = row_adaptor
      @csv = CSV.parse(contents, col_sep: delim, headers: headers, quote_char: '"')
    end

    def import!
      last_old_variant_id = Variant.last.id
      last_old_eid = EvidenceItem.last.id
      thrown_out_count = 0
      File.open('invalid_rows.csv', 'w') do |fout|
        File.open('illumina_pred_with_urls.tsv', 'w') do |fall|
        fout.puts csv.headers.join(',')
        fall.puts [csv.headers + ['Result', "URL"] ].flatten.join("\t")
        ActiveRecord::Base.transaction do
          csv.each do |row|
            if row_adaptor.valid_row?(row)
              (result, eid) = row_adaptor.create_entities_for_row(row)
              cols = row.fields  + [result, eid ?  "https://civic.genome.wustl.edu/#{LinkAdaptors::EvidenceItem.new(eid).path}" : "" ]
              fall.puts cols.join("\t")
            else
              thrown_out_count +=1
              fout.puts row.to_csv
            end
          end
        end
      end
      end
      combine_eids_for_paper
      move_variant_fields_to_suggested_changes(last_old_variant_id)
      adjust_evidence_levels(last_old_eid)
    end

    def move_variant_fields_to_suggested_changes(last_old_variant_id)
      Variant.where('variants.id > ?', last_old_variant_id).all.each do |variant|
        existing = {
          chromosome: variant.chromosome,
          start: variant.start,
          stop: variant.stop,
          reference_bases: variant.reference_bases,
          variant_bases: variant.variant_bases,
        }.reject { |_, val| val.blank? }
        variant.chromosome = nil
        variant.start = nil
        variant.stop = nil
        variant.reference_bases = nil
        variant.variant_bases = nil
        variant.save
        if existing.any?
          #Actions::SuggestChange.new(variant, User.find_by(email: 'lcbarrow11@gmail.com'), existing, {})
          change = variant.suggest_change!(User.find_by(email: 'lcbarrow11@gmail.com'), existing, {})
          Event.create(
            action: 'change suggested',
            originating_user: User.find_by(email: 'lcbarrow11@gmail.com'),
            subject: variant,
            state_params: change.state_params
          )
        end
      end
    end

    def combine_eids_for_paper
      Source.find_by(pubmed_id: 11595686).evidence_items
        .group_by { |x| x.variant.name }
        .select {|_, v| v.size == 2 }
        .each do |_, eid|
          eid.first.drugs << eid.last.drugs
          eid.first.drug_interaction_type = 'Substitutes'
          eid.first.save
          Notification.where(event: eid.last.events).destroy_all
          eid.last.events.destroy_all
          eid.last.audits.destroy_all
          eid.last.destroy
        end
    end

    def adjust_evidence_levels(last_old_eid)
      possible_sources = Source.joins(:evidence_items).all
        .sort_by { |s| - s.evidence_items.count }
        .reject {|s| s.evidence_items.count < 6 }

        possible_sources.each do |source|
          eligible_eids = source.evidence_items.where('evidence_items.id > ?', last_old_eid)
            .where(evidence_level: EvidenceItem.evidence_levels['B'])
          if eligible_eids.count >= 6
            eligible_eids.each do |eid|
              eid.evidence_level = 'C'
              eid.save
            end
          end
        end
    end
  end
end