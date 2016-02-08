class CreateComponents < ActiveRecord::Migration
  def change
    create_table :components do |t|
      t.string :name
      t.string :code
      t.decimal :value
      t.decimal :value_max
      t.decimal :value_min
      t.datetime :date_published

      t.timestamps null: false
    end
  end
end
