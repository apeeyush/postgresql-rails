json.array!(@logs) do |log|
  json.extract! log, :id, :session, :event, :time, :parameters
  json.url log_url(log, format: :json)
end
