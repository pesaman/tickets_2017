json.array!(@tickets) do |ticket|
  json.extract! ticket, :id, :name, :description
  json.url ticket_url(ticket, format: :json)
end
