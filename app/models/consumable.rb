class Consumable < ApplicationRecord
	validates_presence_of :id, :consumable_type
	has_one :item, :as => :details, :dependent => :destroy
end
