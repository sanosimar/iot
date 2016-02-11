class AddColumnSubscriptionIdToProfileReal < ActiveRecord::Migration
  def change
    add_column :profiles, :subscription_id, :integer
  end
end
rails