json.array!(@fund_sources) do |fund_source|
  json.extract! fund_source, :id
  json.url fund_source_url(fund_source, format: :json)
end
