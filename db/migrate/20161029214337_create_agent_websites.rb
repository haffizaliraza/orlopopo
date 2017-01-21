class CreateAgentWebsites < ActiveRecord::Migration[5.0]
  def change
    create_table :agent_websites do |t|
      t.string :website_link
      t.string :website_api_key
      t.belongs_to :agent, foreign_key: true

      t.timestamps
    end
  end
end
