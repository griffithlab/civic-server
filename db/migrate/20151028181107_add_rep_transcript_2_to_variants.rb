class AddRepTranscript2ToVariants < ActiveRecord::Migration
  def change
    add_column :variants, :representative_transcript2, :text
  end
end
