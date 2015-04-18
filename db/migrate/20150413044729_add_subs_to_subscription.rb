class AddSubsToSubscription < ActiveRecord::Migration
  def change
    add_column :subscriptions, :subscriber, :int
    add_column :subscriptions, :subscribee, :int
  end
end
