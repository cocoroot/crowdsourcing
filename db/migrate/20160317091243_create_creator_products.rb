class CreateCreatorProducts < ActiveRecord::Migration
  def change
    create_table :creator_products do |t|
      t.integer :product_id
      t.integer :creator_id

      t.timestamps null: false
    end
  end
end
