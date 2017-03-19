class CreateItems < ActiveRecord::Migration[5.0]
  def change
    create_table :items, { id: false } do |t|
      t.primary_key :id, :null => false
      t.string :name, :null => false
      t.string :icon, :null => false
      t.string :description
      t.string :item_type, :null => false
      t.string :rarity, :null => false
      t.integer :level, :default => 0
      t.integer :vendor_value, :default => 0
      t.timestamps
    end
  end
end
