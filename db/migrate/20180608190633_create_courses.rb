class CreateCourses < ActiveRecord::Migration[5.2]
  def change
    create_table :courses do |t|
      t.string :name
      t.float :hours_in_class

      t.timestamps
    end
  end
end
