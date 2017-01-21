class CreateProfilers < ActiveRecord::Migration[5.0]
  def change
    create_table :profilers do |t|
      t.references :agent_website, foreign_key: true
      t.string :user_session_key
      t.timestamp :expiry_time
      t.text :visited

      t.timestamps
    end
  end
end
