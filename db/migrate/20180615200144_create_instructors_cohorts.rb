class CreateInstructorsCohorts < ActiveRecord::Migration[5.2]
  def change
    create_table :instructors_cohorts do |t|
      t.references :instructor, foreign_key: true
      t.references :cohort, foreign_key: true

      t.timestamps
    end
  end
end
