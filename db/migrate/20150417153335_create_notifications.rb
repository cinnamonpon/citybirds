class CreateNotifications < ActiveRecord::Migration
  def change
    create_table :notifications do |t|
      t.integer :post_id
      t.integer :user_id
      t.string :ntype

      t.timestamps null: false
    end
  end
end
