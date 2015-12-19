require 'rails_helper'

RSpec.describe OfficeWorker, type: :model do
  context 'Validation' do
    it { is_expected.to validate_presence_of(:years_of_exp) }
    it { is_expected.to validate_numericality_of(:years_of_exp).is_greater_than_or_equal_to(0) }
  end
end