class CreateComments < ActiveRecord::Migration
  def change
    create_table :comments do |t|
      t.integer :user_id
      t.integer :post_id
      t.integer :comment_id
      t.string :message
      t.date :date_modified

      t.timestamps null: false
    end
  end
end
