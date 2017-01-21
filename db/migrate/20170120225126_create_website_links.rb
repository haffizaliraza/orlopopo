class CreateWebsiteLinks < ActiveRecord::Migration[5.0]
  def change
    create_table :website_links do |t|
      t.string :website
      t.text :link

      t.timestamps
    end
  end
end
