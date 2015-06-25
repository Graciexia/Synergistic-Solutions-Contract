10.times do
  # create 10 companies
  company = Company.create(company_name: Faker::Company.name)

  5.times do
    # create 5 locations per company
    location = company.locations.create(city: Faker::Address.city)
    5.times do
      # create 10 employees per location (and also link to company)
      employee = company.employees.create(name: Faker::Name.name,
                               title: Faker::Name.title,
                               location_id: location.id,
                               hire_date: Faker::Date.between(10.years.ago, 1.day.ago))
      2.times do
        # create 3 courses per location
        course = location.courses.create(course_name: Faker::Company.catch_phrase,
                               course_summary: Faker::Lorem.paragraph,
                               enrollment_cap: Array(20..100).sample)

        EmployeesCourse.create(course_id: course.id, employee_id: employee.id)
      end
    end
  end
end

# Employee.all.map do |employee|
#   Course.all.map do |course|
#     EmployeesCourse.create(course_id: course.id, employee_id: employee.id)
#   end
# end


