class CreatePosts < ActiveRecord::Migration[5.2]
  def change
    create_table :posts do |t|
      t.integer :admin_id
      t.string :description
      t.string :image

      t.timestamps
    end
  end
end
