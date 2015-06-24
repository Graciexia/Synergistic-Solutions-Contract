class CreateCourses < ActiveRecord::Migration
  def change
    create_table :courses do |t|
      t.string :course_name
      t.string :course_summary
      t.integer :enrollment_cap
      t.belongs_to :location, index: true, foreign_key: true

      t.timestamps null: false
    end
  end
end
