json.array!(@moreinfos) do |moreinfo|
  json.extract! moreinfo, :id, :Have_you_studied_at_KU_before?
  json.url moreinfo_url(moreinfo, format: :json)
end
