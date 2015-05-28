class ExpandCommentTitleColumn < ActiveRecord::Migration
  def change
    change_column :comments, :title, :text
  end
end
