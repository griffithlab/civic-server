class AddSourceType < ActiveRecord::Migration
  def change
    add_column :sources, :source_type, :integer

    Source.all.each do |s|
      s.source_type = 'pubmed'
      s.save
    end

    change_column_null :sources, :source_type, false

    rename_column :sources, :pubmed_id, :citation_id
  end
end
