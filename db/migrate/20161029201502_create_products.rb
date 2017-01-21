class CreateProducts < ActiveRecord::Migration[5.0]
  def change
    create_table :products do |t|
      t.string :name
      t.string :compony_name
      t.float :price
      t.string :link
      t.string :image_link

      t.timestamps
    end
  end
end
