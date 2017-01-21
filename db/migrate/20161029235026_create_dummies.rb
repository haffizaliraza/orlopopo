class CreateDummies < ActiveRecord::Migration[5.0]
  def change
    create_table :dummies do |t|
      t.integer :fis_id

      t.timestamps
    end
  end
end
