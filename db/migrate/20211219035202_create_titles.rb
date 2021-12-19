class CreateTitles < ActiveRecord::Migration[5.2]
  def change
    create_table :titles do |t|
      t.integer :admin_id
      t.integer :content_id

      t.timestamps
    end
  end
end
