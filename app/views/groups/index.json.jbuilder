json.array!(@groups) do |group|
  json.extract! group, :id, :title, :course, :semester
  json.url group_url(group, format: :json)
end
