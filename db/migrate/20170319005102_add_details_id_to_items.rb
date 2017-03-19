class AddDetailsIdToItems < ActiveRecord::Migration[5.0]
  def change
    add_column :items, :details_id, :integer
    add_column :items, :details_type, :string
  end
end
