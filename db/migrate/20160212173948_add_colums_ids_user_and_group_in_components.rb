class AddColumsIdsUserAndGroupInComponents < ActiveRecord::Migration
  def change
    add_column :components, :user_id, :integer
    add_column :components, :group_component_id, :integer
  end
end
