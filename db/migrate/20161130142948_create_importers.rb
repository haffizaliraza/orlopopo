class CreateImporters < ActiveRecord::Migration[5.0]
  def change
    create_table :importers do |t|
      t.string :f1
      t.string :f2
      t.string :f3

      t.timestamps
    end
  end
end
