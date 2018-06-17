class InstructorsCohort < ApplicationRecord
  belongs_to :instructor
  belongs_to :cohort
end
