class AddCommentUserToComments < ActiveRecord::Migration
  def change
  	add_column :comments, :comment_user, :integer
  end
end
