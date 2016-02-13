class AddModifiedColumnOnProfile < ActiveRecord::Migration
  def change
    rename_column :profiles, :name, :username
    add_column :profiles, :first_name, :string
    add_column :profiles, :last_name, :string
  end
end
