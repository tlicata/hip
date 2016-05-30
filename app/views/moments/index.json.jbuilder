json.array!(@moments) do |moment|
  json.extract! moment, :id, :name, :date, :info
  json.url moment_url(moment, format: :json)
end
