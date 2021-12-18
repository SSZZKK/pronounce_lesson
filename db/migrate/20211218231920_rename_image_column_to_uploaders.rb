class RenameImageColumnToUploaders < ActiveRecord::Migration[5.2]
  def change
  rename_column :uploads, :image, :content
  end
end
