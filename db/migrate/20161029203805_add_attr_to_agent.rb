class AddAttrToAgent < ActiveRecord::Migration[5.0]
  def change
	add_column :agents , :first_name , :string 
	add_column :agents , :last_name , :string
	add_column :agents , :dob , :date
	add_column :agents , :gender , :integer
	add_column :agents , :country , :string
  end
end
