class CreatePosts < ActiveRecord::Migration
  def change
    create_table :posts do |t|
      t.integer :user_id
      t.integer :post_id
      t.string :title
      t.string :message
      t.integer :rating
      t.date :date_modified
      t.string :media

      t.timestamps null: false
    end
  end
end
