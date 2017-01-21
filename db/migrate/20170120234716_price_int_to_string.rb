class PriceIntToString < ActiveRecord::Migration[5.0]
  def change
  	remove_column :products , :price , :integer
  	add_column :products , :price , :string
  end
end
