require 'rails_helper'

RSpec.describe Student, type: :model do
  context 'Validation' do
    describe 'date of birth' do
      let!(:student) { Student.new(name: "Oliver", dob: DateTime.now) }

      it 'must be larger than 18' do
        student.validate
        expect(student.errors.messages).to include(dob: ['minimum 18 years'])
      end
    end
  end
end