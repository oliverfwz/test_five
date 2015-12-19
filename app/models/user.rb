class User < ActiveRecord::Base
  validates :name, presence: true
  validates :dob, presence: true

  def age
  	return if dob.blank?
  	((Date.today - dob) / 365).to_i
  end
end