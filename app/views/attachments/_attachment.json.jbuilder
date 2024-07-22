json.extract! attachment, :id, :file_extension, :url, :uploader_id, :attachable_id, :attachable_type, :created_at, :updated_at
json.url attachment_url(attachment, format: :json)
