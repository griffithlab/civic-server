class AddRepTranscript2ToVariants < ActiveRecord::Migration[4.2]
  def change
    add_column :variants, :representative_transcript2, :text
  end
end
