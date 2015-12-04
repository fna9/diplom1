json.array!(@syllabuses) do |plan|
  json.extract! syllabus, :id, :code, :title, :level, :form_of_study, :training_period
  json.url syllabus_url(syllabus, format: :json)
end
