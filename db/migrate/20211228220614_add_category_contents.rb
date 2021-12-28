class AddCategoryContents < ActiveRecord::Migration[5.2]
  def change
    add_column :contents, :category, :string
  end
end
