json.extract! memo, :id, :title, :author, :content, :created_at, :updated_at
json.url memo_url(memo, format: :json)
