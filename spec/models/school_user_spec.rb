require 'rails_helper'

RSpec.describe SchoolUser, type: :model do
  context 'Association' do
    it { is_expected.to belong_to(:student) }
    it { is_expected.to belong_to(:school) }
  end
end