json.array!(@questions) do |question|
  json.extract! question, :id, :text, :ansa, :ansb, :cans
  json.url question_url(question, format: :json)
end
