class CombineDuplicateDiseases
  def self.run
    diseases_with_duplicates = Disease.group(:doid)
    .count
    .select { |_, count| count > 1 }

    ActiveRecord::Base.transaction do
      diseases_with_duplicates.each do |doid, _|
        diseases = Disease.where(doid: doid)
        winner = diseases.first
        diseases[1..-1].each do |loser|
          EvidenceItem.where(disease: loser).each do |ei|
            ei.disease = winner
            ei.save
          end
          loser.delete
        end
      end
    end
  end
end