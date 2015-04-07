class RemoveDateModifiedFromPostsAndComments < ActiveRecord::Migration
  def change
  	remove_column :posts, :date_modified
  	remove_column :comments, :date_modified
  end
end
