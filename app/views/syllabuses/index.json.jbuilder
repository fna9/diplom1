json.array!(@syllabuses) do |syllabus|
  json.extract! syllabus, :id, :code, :title, :level, :form_of_study, :training_period
  json.url syllabus_url(syllabus, format: :json)
end
