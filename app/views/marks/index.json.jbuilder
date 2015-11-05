json.array!(@marks) do |mark|
  json.extract! mark, :id, :mark, :comment
  json.url mark_url(mark, format: :json)
end
