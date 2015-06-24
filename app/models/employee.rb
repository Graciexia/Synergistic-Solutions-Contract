class Employee < ActiveRecord::Base
  belongs_to :company
  belongs_to :location
  has_many :employees_courses
  has_many :courses, through: :employees_courses
end
