class AddIndexToProduct < ActiveRecord::Migration[5.0]
  def change
	add_index :products , :name
  end
end
