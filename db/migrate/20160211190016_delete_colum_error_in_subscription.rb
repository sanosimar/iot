class DeleteColumErrorInSubscription < ActiveRecord::Migration
  def change
    remove_column :subscriptions, :subscription_id
  end
end
