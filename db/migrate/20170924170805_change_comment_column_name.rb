class ChangeCommentColumnName < ActiveRecord::Migration[5.1]
  def change
    rename_column :comments, :commenter, :email
    rename_column :comments, :body, :text
  end
end
