10.times do
  company = Company.create(company_name: Faker::Company.name)
  5.times do
    10.times do
      company.employees.create(name: Faker::Name.name,
                               title: Faker::Name.title,
                               hire_date: Faker::Date.between(10.years.ago, 1.day.ago))
    end
    location = company.locations.create(city: Faker::Address.city)
      3.times do
        location.courses.create(course_name: Faker::Company.catch_phrase,
                               course_summary: Faker::Lorem.paragraph,
                               enrollment_cap: Array(20..100).sample)

    end
  end
end



