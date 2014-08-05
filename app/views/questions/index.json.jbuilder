json.array!(@questions) do |question|
  json.extract! question, :id, :name, :correct_choice, :difficulty_level
  json.url question_url(question, format: :json)
end
