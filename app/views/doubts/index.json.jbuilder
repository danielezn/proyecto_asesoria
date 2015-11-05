json.array!(@doubts) do |doubt|
  json.extract! doubt, :id, :title, :body
  json.url doubt_url(doubt, format: :json)
end
