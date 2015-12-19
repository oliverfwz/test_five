class Student < User
  validate :dob_min_18
  
  def dob_min_18
    if dob + 18.years > DateTime.now
      errors.add(:dob, 'minimum 18 years')
    end
  end
end