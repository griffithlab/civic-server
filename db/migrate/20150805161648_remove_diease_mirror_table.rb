class RemoveDieaseMirrorTable < ActiveRecord::Migration[4.2]
  def change
    drop_table :disease_ontology_mirrors
  end
end
