class Course < ActiveRecord::Base
  belongs_to :company
  has_many :employees, through: :employees_courses
end
