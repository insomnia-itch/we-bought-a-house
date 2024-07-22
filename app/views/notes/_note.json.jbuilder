json.extract! note, :id, :notable_id, :notable_type, :body, :author_id, :created_at, :updated_at
json.url note_url(note, format: :json)
