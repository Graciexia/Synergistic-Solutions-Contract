json.array!(@courses) do |course|
  json.extract! course, :id, :course_name, :course_summary, :starting_date
  json.url course_url(course, format: :json)
end
