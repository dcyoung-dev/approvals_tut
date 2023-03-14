json.extract! change_request, :id, :title, :body, :type, :pull_request_id, :created_at, :updated_at
json.url change_request_url(change_request, format: :json)
