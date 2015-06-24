class Course < ActiveRecord::Base
  belongs_to :location
  has_many :employees_courses
  has_many :employees, through: :employees_courses
end
