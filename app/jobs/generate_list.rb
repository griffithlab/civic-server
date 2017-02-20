class GenerateList < ActiveJob::Base
  def perform
    File.open("public/list.html", 'w') do |f|
      File.open("text/list_header.html", 'r') do |reader|
        while line = reader.gets
          f.puts line
        end
      end
      #Reordered generation, since evidence items are more important
      #Ever evidence item will always have a variant and gene, so all of these
      #links will always have a full page of gene->variant->evidence
      EvidenceItem.where("status not like 'rejected'").joins("LEFT JOIN variants ON variants.id = evidence_items.variant_id").pluck(:id, :variant_id, :gene_id).each do |var|
        f.puts "    <a href=\"/events/genes/%{GID}/summary/variants/%{VID}/summary/evidence/%{EID}/summary\">Evidence %{EID}</a></br>" % {
          :EID => var[0],
          :VID => var[1],
          :GID => var[2]
        }
      end
      f.flush
      #skip variants, since the above items will have covered all of them
      #Variants without evidence are not accessible in CIViC
      #Lastly, select all genes for which there are no variants/evidence
      Gene.joins("LEFT JOIN (SELECT variants.* from variants INNER JOIN evidence_items ON evidence_items.variant_id = variants.id) AS variants ON variants.gene_id = genes.id").where("variants.gene_id IS NULL").pluck(:id).each do |id|
        f.puts "    <a href=\"/events/genes/%{ID}/summary\">Gene %{ID}</a><br>" % {
          :ID => id
        }
      end
      f.flush
      #These two queries should form the minimal set of links to cover all content
      File.open("text/list_footer.html", 'r') do |reader|
        while line = reader.gets
          f.puts line
        end
      end
    end
    self.class.set(wait_until: Date.tomorrow.midnight).perform_later
  end
end
