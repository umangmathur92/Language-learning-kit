json.array!(@options) do |option|
  json.extract! option, :id, :optionA, :optionB, :optionC, :optionD
  json.url option_url(option, format: :json)
end
