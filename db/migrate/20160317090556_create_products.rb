class CreateProducts < ActiveRecord::Migration
  def change
    create_table :products do |t|
      t.string :title
      t.string :price
      t.string :body
      t.integer :point
      t.string :file_name

      t.timestamps null: false
    end
  end
end
