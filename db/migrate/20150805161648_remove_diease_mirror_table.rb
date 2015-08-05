class RemoveDieaseMirrorTable < ActiveRecord::Migration
  def change
    drop_table :disease_ontology_mirrors
  end
end
