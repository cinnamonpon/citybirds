class AddDirToPost < ActiveRecord::Migration
  def change
    add_column :posts, :dir, :string
  end
end
