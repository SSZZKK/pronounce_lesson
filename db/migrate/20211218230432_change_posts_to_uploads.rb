class ChangePostsToUploads < ActiveRecord::Migration[5.2]
  def change
   rename_table :posts, :uploads
  end
end