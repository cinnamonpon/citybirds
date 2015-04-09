class CreateSubscriptions < ActiveRecord::Migration
  def change
    create_table :subscriptions do |t|
      t.integer :subscriber
      t.integer :subscribee

      t.timestamps null: false
    end
  end
end
