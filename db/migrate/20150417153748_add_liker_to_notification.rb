class AddLikerToNotification < ActiveRecord::Migration
  def change
    add_column :notifications, :liker, :integer
  end
end
