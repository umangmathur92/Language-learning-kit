json.array!(@exercises) do |exercise|
  json.extract! exercise, :id, :title, :information, :instruction, :hint, :solution_code, :default_code
  json.url exercise_url(exercise, format: :json)
end
