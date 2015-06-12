json.array!(@acedemicrecords) do |acedemicrecord|
  json.extract! acedemicrecord, :id, :matriculation/olevel, :name_of_school/college
  json.url acedemicrecord_url(acedemicrecord, format: :json)
end
