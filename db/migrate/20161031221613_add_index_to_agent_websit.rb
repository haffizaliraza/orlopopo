class AddIndexToAgentWebsit < ActiveRecord::Migration[5.0]
  def change
  	add_index :agent_websites , :website_api_key
  end
end
