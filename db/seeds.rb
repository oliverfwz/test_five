User.destroy_all
School.destroy_all

university  = University.create!(name: 'Univer', address: '123 AAA')
high_school = HighSchool.create!(name: 'High School', address: '123 AAA')

university.students.create!(name: "Oliver", dob: "29-09-1991")
university.students.create!(name: "Theo", dob: "29-09-1991")
university.students.create!(name: "Smith", dob: "29-09-1991")

high_school.students.create!(name: "Alex", dob: "29-09-1991")
high_school.students.create!(name: "Robin", dob: "29-09-1991")
high_school.students.create!(name: "Yunchang", dob: "29-09-1991")

OfficeWorker.create!(name: "Sophie", dob: "1-1-1993", years_of_exp: 2)
OfficeWorker.create!(name: "Heroman", dob: "1-1-1989", years_of_exp: 3)