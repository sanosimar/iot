class CreateGroupComponents < ActiveRecord::Migration
  def change
    create_table :group_components do |t|
      t.integer :user_id
      t.string :name
      t.text :description
      t.boolean :enable

      t.timestamps null: false
    end
  end
end
