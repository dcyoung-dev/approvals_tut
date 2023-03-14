json.extract! pull_request, :id, :title, :body, :created_at, :updated_at
json.url pull_request_url(pull_request, format: :json)
