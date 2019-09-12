class AddSourceType < ActiveRecord::Migration[4.2]
  def change
    add_column :sources, :source_type, :integer

    source_type = Source.source_types['PubMed']
    Source.all.each do |s|
      s.source_type = source_type
      s.save
    end

    change_column_null :sources, :source_type, false

    rename_column :sources, :pubmed_id, :citation_id
  end
end
