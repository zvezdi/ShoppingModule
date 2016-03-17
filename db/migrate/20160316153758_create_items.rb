class CreateItems < ActiveRecord::Migration
  def change
    create_table :items do |t|
      t.string :name, null: false
      t.decimal :price, null: false, precision: 8, scale: 2
      t.integer :quantity, null: false, default: 1
      t.text :description
    end
  end
end
