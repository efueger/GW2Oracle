class CreateConsumables < ActiveRecord::Migration[5.0]
  def change
    create_table :consumables do |t|
	    t.string :type, :null => false
	    t.string :name
	    t.string :description
	    t.integer :duration
	    t.string :unlock_type
	    t.integer :color_id
	    t.integer :recipe_id
	    t.integer :apply_count
      t.timestamps
    end
  end
end
