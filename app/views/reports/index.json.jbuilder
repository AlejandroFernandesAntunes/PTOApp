json.array!(@reports) do |report|
  json.extract! report, :id, :rate, :body, :description
  json.url report_url(report, format: :json)
end
