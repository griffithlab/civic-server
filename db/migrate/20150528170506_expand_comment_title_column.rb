class ExpandCommentTitleColumn < ActiveRecord::Migration[4.2]
  def change
    change_column :comments, :title, :text
  end
end
