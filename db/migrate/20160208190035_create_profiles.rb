class CreateProfiles < ActiveRecord::Migration
  def change
    create_table :profiles do |t|
      t.integer :user_id
      t.string :name
      t.boolean :email_confirmed
      t.date :bithday
      t.text :bio
      t.string :color
      t.string :image_url
      t.string :subscription
      t.string :social_network

      t.timestamps null: false
    end
  end
end
