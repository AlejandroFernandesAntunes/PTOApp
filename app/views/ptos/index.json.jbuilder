json.array!(@ptos) do |pto|
  json.extract! pto, :id, :description, :date
  json.url pto_url(pto, format: :json)
end
