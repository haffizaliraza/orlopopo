class CreateVisitorsProfileProducts < ActiveRecord::Migration[5.0]
  def change
    create_table :visitors_profile_products do |t|
      t.references :product, foreign_key: true
      t.references :visitor_profile, foreign_key: true

      t.timestamps
    end
  end
end
