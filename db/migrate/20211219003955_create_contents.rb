class CreateContents < ActiveRecord::Migration[5.2]
  def change
    create_table :contents do |t|
      t.integer :admin_id
      t.string :description
      t.string :video
      t.string :medium_id

      t.timestamps
    end
  end
end
