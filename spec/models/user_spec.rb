require 'rails_helper'

RSpec.describe User, type: :model do
  context 'Validation' do
    it { is_expected.to validate_presence_of(:name) }
    it { is_expected.to validate_presence_of(:dob) }
  end

  context 'Show age'  do
  	let!(:student) { create(:student, dob: (Date.today - 24.years)) }

  	it 'return age' do
  		expect(student.age).to eq 24
  	end
  end
end