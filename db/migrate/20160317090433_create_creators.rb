class CreateCreators < ActiveRecord::Migration
  def change
    create_table :creators do |t|
      t.integer :user_id
      t.string :skill
      t.string :body

      t.timestamps null: false
    end
  end
end
