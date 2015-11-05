json.array!(@ratings) do |rating|
  json.extract! rating, :id, :title, :type, :offset, :min_offset, :max_offset, :necessarily
  json.url rating_url(rating, format: :json)
end
