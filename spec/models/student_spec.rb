require 'rails_helper'

RSpec.describe Student, type: :model do
  context 'Association' do
    it { is_expected.to have_many(:school_users) }
    it { is_expected.to have_many(:schools) }
  end
  
  context 'Validation' do
    describe 'date of birth' do
      let!(:student) { Student.new(name: "Oliver", dob: DateTime.now) }

      it 'must be larger than 18' do
        student.validate
        expect(student.errors.messages).to include(dob: ['minimum 18 years'])
      end
    end
  end

  context '#schoolmates' do
    describe 'get list schoolmates' do
      let!(:university) { create(:university) }

      it 'show list of schoolmates' do
        user = university.students.create(name: "Oliver", dob: "29-09-1991")
        university.students.create(name: "Theo", dob: "29-09-1991")
        expect(user.schoolmates.count).to eq 2
        expect(user.schoolmates.first).to eq user
      end
    end
  end
end