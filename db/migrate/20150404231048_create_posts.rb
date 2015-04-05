class CreatePosts < ActiveRecord::Migration
  def change
    create_table :posts do |t|
      t.integer :post_id
      t.integer :user_id
      t.string :path

      t.timestamps null: false
    end
  end
end
