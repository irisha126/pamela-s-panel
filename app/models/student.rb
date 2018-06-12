class Student < ApplicationRecord
    has_many :students_cohorts
    has_many :cohorts, through: :students_cohorts
end
