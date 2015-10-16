class CombineDuplicateDiseases
  def self.run
    diseases_with_duplicates = Disease.group(:doid)
    .count
    .select { |_, count| count > 1 }

    ActiveRecord::Base.transaction do
      diseases_with_duplicates.each do |doid, _|
        diseases = Disease.where(doid: doid)
        winner = diseases.first
        winner.name = transform_string(winner.name)
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

  private
  def self.transform_string(x)
    x.strip.split.map { |w| w[0] = w[0].upcase; w }.join(' ')
  end
end