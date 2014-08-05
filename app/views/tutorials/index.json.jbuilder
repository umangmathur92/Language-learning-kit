json.array!(@tutorials) do |tutorial|
  json.extract! tutorial, :id, :name, :details
  json.url tutorial_url(tutorial, format: :json)
end
