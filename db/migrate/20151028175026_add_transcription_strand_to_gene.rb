class AddTranscriptionStrandToGene < ActiveRecord::Migration
  def change
    add_column :genes, :strand, :text
  end
end
