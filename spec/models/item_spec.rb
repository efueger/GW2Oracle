require 'rails_helper'

RSpec.describe Item, type: :model do
	before do
		Item.create(
						:id => 12452,
		        :name => 'Omnomberry Bar',
						:description => nil,
		        :icon => 'https://render.guildwars2.com/file/6BD5B65FBC6ED450219EC86DD570E59F4DA3791F/433643.png',
		        :item_type => 'Consumable',
		        :rarity => 'Fine',
		        :level => 80,
		        :vendor_value => 33
		)
	end
	context 'when created' do
		context 'with no attributes' do
			subject { Item.new }
			it { is_expected.to have_at_least(1).error_on(:id) }
			it { is_expected.to have_at_least(1).error_on(:name) }
			it { is_expected.to have(0).errors_on(:description) }
			it { is_expected.to have_at_least(1).error_on(:icon) }
			it { is_expected.to have_at_least(1).error_on(:item_type) }
			it { is_expected.to have_at_least(1).error_on(:rarity) }
			it { is_expected.to have(0).errors_on(:level) }
			it { is_expected.to have(0).errors_on(:vendor_value) }
		end
		context 'with a duplicate ID' do
			subject { Item.new(:id => 12452) }
			it { is_expected.to have_at_least(1).error_on(:id) }
		end
	end
end
