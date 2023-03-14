json.extract! comment, :id, :title, :body, :type, :pull_request_id, :created_at, :updated_at
json.url comment_url(comment, format: :json)
