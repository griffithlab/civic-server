class AddFullJournalTitleToSources < ActiveRecord::Migration
  def change
    add_column :sources, :full_journal_title, :string
  end
end
