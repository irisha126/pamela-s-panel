class AddInstructorIdToInstructorCohort < ActiveRecord::Migration[5.2]
  def change
    add_reference :instructor_cohorts, :instructor, foreign_key: true
  end
end
