json.array!(@libraries) do |library|
  json.extract! library, :id, :title
  json.url library_url(library, format: :json)
end
