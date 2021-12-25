class AddColumnsToMedia < ActiveRecord::Migration[5.2]
  def change
    add_column :media, :name, :string
    add_column :media, :language, :string
    add_column :media, :category, :string
  end
end
