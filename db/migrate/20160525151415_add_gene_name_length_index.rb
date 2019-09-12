class AddGeneNameLengthIndex < ActiveRecord::Migration[4.2]
  def index_name
    'gene_name_size_idx'
  end

  def up
    execute("create index #{index_name} on genes (char_length(name));")
  end

  def down
    execute("drop index #{index_name};")
  end
end
