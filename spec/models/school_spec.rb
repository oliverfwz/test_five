require 'rails_helper'

RSpec.describe School, type: :model do
  context 'Association' do
    it { is_expected.to have_many(:school_users) }
    it { is_expected.to have_many(:students) }
  end

  context 'Validation' do
    it { is_expected.to validate_presence_of(:name) }
    it { is_expected.to validate_presence_of(:address) }
  end
end