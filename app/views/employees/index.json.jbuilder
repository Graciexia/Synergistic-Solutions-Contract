json.array!(@employees) do |employee|
  json.extract! employee, :id, :name, :title, :hire_date
  json.url employee_url(employee, format: :json)
end
