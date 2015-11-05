json.array!(@afiles) do |afile|
  json.extract! afile, :id, :description
  json.url afile_url(afile, format: :json)
end
