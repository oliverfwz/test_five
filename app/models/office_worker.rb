class OfficeWorker < User
  validates :years_of_exp, presence: true
  validates :years_of_exp, numericality: { greater_than_or_equal_to: 0 }
  validate :dob_min_20

  def dob_min_20
  	return if dob.blank?
    if dob + 20.years > DateTime.now
      errors.add(:dob, 'minimum 20 years')
    end
  end
end