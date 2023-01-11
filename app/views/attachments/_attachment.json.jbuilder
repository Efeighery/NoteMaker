json.extract! attachment, :id, :attach_title, :attach_content, :created_at, :updated_at
json.url attachment_url(attachment, format: :json)
