class Item < ApplicationRecord
	validates_presence_of :id, :name, :icon, :item_type, :rarity
	validates_uniqueness_of :id
end
