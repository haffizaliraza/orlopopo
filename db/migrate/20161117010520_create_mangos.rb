class CreateMangos < ActiveRecord::Migration[5.0]
  def change
    create_table :mangos do |t|
      t.integer :session
      t.text :visit
      t.datetime :expire

      t.timestamps
    end
  end
end
