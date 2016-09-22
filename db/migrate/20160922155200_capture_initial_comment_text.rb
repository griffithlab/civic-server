class CaptureInitialCommentText < ActiveRecord::Migration
  def change
    add_column :source_suggestions, :initial_comment, :text, index: true
  end
end
