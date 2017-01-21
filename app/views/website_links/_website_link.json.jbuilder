json.extract! website_link, :id, :website, :link, :created_at, :updated_at
json.url website_link_url(website_link, format: :json)