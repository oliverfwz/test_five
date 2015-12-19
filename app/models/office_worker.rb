class OfficeWorker < User
  validates :years_of_exp, presence: true
  validates :years_of_exp, numericality: { greater_than_or_equal_to: 0 }
end