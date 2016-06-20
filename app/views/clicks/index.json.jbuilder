json.array!(@clicks) do |click|
  json.extract! click, :id, :ip_address
  json.url click_url(click, format: :json)
end
