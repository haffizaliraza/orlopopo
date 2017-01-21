class CreateFrequentItemSets < ActiveRecord::Migration[5.0]
  def change
    create_table :frequent_item_sets do |t|
      t.text :item

      t.timestamps
    end
  end
end
