json.extract! agent_website, :id, :website_link, :website_api_key, :agent_id, :created_at, :updated_at
json.url agent_website_url(agent_website, format: :json)