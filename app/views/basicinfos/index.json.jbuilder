json.array!(@basicinfos) do |basicinfo|
  json.extract! basicinfo, :id, :alternate_email, :place_of_birth
  json.url basicinfo_url(basicinfo, format: :json)
end
