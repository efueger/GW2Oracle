require 'rails_helper'

RSpec.describe Consumable, type: :model do
  context 'when created' do
	  context 'with no attributes' do
		  subject { Consumable.new }
		  it { is_expected.to have_at_least(1).error_on(:id) }
		  it { is_expected.to have_at_least(1).error_on(:consumable_type) }
	  end
  end
end
