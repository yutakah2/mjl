class RemoveColumnsInArticles < ActiveRecord::Migration[6.0]
  def change
    remove_column :articles, :comment_id, :integer
    remove_column :articles, :like_id, :integer
    remove_column :articles, :calendar_id, :integer
    remove_column :articles, :user_id, :integer
   end
end
