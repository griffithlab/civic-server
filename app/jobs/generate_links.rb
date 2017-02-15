class GenerateLinks < ActiveJob::Base
  def perform
    File.open("public/links.html", 'w') do |f|
      File.open("text/links_header.html", 'r') do |reader|
        while line = reader.gets
          f.puts line
        end
      end
      Gene.pluck(:id).each do |id|
        f.puts "    <a href=\"/#/events/genes/%{ID}/summary\">Gene %{ID}</a><br>" % {
          :ID => id
        }
      end
      f.flush
      Variant.pluck(:id, :gene_id).each do |var|
        f.puts "    <a href=\"/#/events/genes/%{GID}/summary/variants/%{VID}/summary\">Variant %{VID}</a></br>" % {
          :VID => var[0],
          :GID => var[1]
        }
      end
      f.flush
      EvidenceItem.where("status not like 'rejected'").joins("LEFT JOIN variants ON variants.id = evidence_items.variant_id").pluck(:id, :variant_id, :gene_id).each do |var|
        f.puts "    <a href=\"/#/events/genes/%{GID}/summary/variants/%{VID}/summary/evidence/%{EID}/summary\">Evidence %{EID}</a></br>" % {
          :EID => var[0],
          :VID => var[1],
          :GID => var[2]
        }
      end
      f.flush
      File.open("text/links_footer.html", 'r') do |reader|
        while line = reader.gets
          f.puts line
        end
      end
    end
    self.class.set(wait_until: Date.tomorrow.midnight).perform_later
  end
end
