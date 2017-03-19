class RenameConsumablesTypeToConsumableType < ActiveRecord::Migration[5.0]
  def change
    rename_column :consumables, :type, :consumable_type
  end
end
