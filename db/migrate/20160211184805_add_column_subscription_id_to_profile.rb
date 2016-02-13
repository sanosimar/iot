class AddColumnSubscriptionIdToProfile < ActiveRecord::Migration
  def change
    add_column :components, :user_id, :integer
    add_column :components, :subscription_id, :integer
  end
end
