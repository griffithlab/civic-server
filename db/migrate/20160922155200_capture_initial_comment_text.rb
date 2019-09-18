class CaptureInitialCommentText < ActiveRecord::Migration[4.2]
  def change
    add_column :source_suggestions, :initial_comment, :text, index: true
  end
end
