class Cohort < ApplicationRecord
  belongs_to :course
  has_many :students_cohorts
  has_many :students, through: :students_cohorts
  has_many :instructors_cohorts
  has_many :instructors, through: :instructors_cohorts
end


