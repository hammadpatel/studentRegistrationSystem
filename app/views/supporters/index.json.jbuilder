json.array!(@supporters) do |supporter|
  json.extract! supporter, :id, :supported_by, :supporters_firstname
  json.url supporter_url(supporter, format: :json)
end
