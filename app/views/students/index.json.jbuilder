json.array!(@students) do |student|
  json.extract! student, :id, :last_name, :first_name, :second_name, :b_date, :number_of_books
  json.url student_url(student, format: :json)
end
