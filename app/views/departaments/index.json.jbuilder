json.array!(@departaments) do |departament|
  json.extract! departament, :id, :name, :description
  json.url departament_url(departament, format: :json)
end
