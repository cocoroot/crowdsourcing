class CreateComments < ActiveRecord::Migration
  def change
    create_table :comments do |t|
      t.integer :product_id
      t.integer :user_id
      t.string :title
      t.string :body

      t.timestamps null: false
    end
  end
end
