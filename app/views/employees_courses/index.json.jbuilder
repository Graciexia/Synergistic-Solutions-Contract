json.array!(@employees_courses) do |employees_course|
  json.extract! employees_course, :id
  json.url employees_course_url(employees_course, format: :json)
end
