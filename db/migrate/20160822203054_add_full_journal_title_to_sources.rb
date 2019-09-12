class AddFullJournalTitleToSources < ActiveRecord::Migration[4.2]
  def change
    add_column :sources, :full_journal_title, :string
  end
end
