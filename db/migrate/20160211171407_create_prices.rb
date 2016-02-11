class CreatePrices < ActiveRecord::Migration
  def change
    create_table :prices do |t|
      t.string :name
      t.string :name_with_price
      t.decimal :value
      t.string :currency
      t.string :color
      t.string :group
      t.boolean :enable

      t.timestamps null: false
    end
  end
end
