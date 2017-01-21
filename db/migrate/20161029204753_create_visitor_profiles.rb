class CreateVisitorProfiles < ActiveRecord::Migration[5.0]
  def change
    create_table :visitor_profiles do |t|
      t.string :session_key

      t.timestamps
    end
  end
end
