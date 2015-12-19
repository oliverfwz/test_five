class School < ActiveRecord::Base
  validates :name, presence: true
  validates :address, presence: true

  has_many :school_users, dependent: :destroy
  has_many :students, through: :school_users
end