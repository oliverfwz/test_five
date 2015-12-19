class Student < User
  validate :dob_min_18

  has_many :school_users, dependent: :destroy, foreign_key: "user_id"
  has_many :schools, through: :school_users
  
  def dob_min_18
    return if dob.blank?
    if dob + 18.years > DateTime.now
      errors.add(:dob, 'minimum 18 years')
    end
  end

  def schoolmates
  	school_ids = schools.pluck(:id)
  	user_ids = SchoolUser.where(school_id: school_ids).pluck(:user_id).uniq
  	Student.where(id: user_ids)
  end
end