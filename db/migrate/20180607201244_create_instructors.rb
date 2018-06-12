class CreateInstructors < ActiveRecord::Migration[5.2]
  def change
    create_table :instructors do |t|
      t.string :first_name
      t.string :last_name
      t.date :date_of_birth
      t.float :salary
      t.string :highest_completed_education

      t.timestamps
    end
  end
end
