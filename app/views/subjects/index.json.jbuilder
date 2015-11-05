json.array!(@subjects) do |subject|
  json.extract! subject, :id, :title, :type, :type_of_reporting
  json.url subject_url(subject, format: :json)
end
