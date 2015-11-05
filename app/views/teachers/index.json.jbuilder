json.array!(@teachers) do |teacher|
  json.extract! teacher, :id, :last_name, :first_name, :second_name, :degree, :rank, :position
  json.url teacher_url(teacher, format: :json)
end
