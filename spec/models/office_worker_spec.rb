require 'rails_helper'

RSpec.describe OfficeWorker, type: :model do
  context 'Validation' do
    it { is_expected.to validate_presence_of(:years_of_exp) }
    it { is_expected.to validate_numericality_of(:years_of_exp).is_greater_than_or_equal_to(0) }

    describe 'date of birth' do
      let!(:office_worker) { OfficeWorker.new(name: "Oliver", dob: DateTime.now, years_of_exp: 1) }

      it 'must be larger than 20' do
        office_worker.validate
        expect(office_worker.errors.messages).to include(dob: ['minimum 20 years'])
      end
    end
  end
end