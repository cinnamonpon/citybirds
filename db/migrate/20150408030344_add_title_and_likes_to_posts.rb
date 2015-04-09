class AddTitleAndLikesToPosts < ActiveRecord::Migration
  def change
    add_column :posts, :title, :string
    add_column :posts, :likes, :integer
  end
end
