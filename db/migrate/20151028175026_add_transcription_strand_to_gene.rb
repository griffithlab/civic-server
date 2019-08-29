class AddTranscriptionStrandToGene < ActiveRecord::Migration[4.2]
  def change
    add_column :genes, :strand, :text
  end
end
