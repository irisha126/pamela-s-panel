class Instructor < ApplicationRecord
    has_many :instructors_cohorts, dependent: :destroy
    has_many :cohorts, through: :instructors_cohorts
    
end
