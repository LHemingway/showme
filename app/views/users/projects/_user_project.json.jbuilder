json.extract! user_project, :id, :screenshot, :description, :technologies, :url, :public_private, :created_at, :updated_at
json.url user_project_url(user_project, format: :json)
