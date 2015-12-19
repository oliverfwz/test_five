class SchoolUser < ActiveRecord::Base
  belongs_to :student, foreign_key: "user_id"
  belongs_to :school
end