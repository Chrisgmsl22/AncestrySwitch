json.extract! node, :id, :title, :description, :ancestry, :created_at, :updated_at
json.url node_url(node, format: :json)
