class AddMediumIdToContents < ActiveRecord::Migration[5.2]
  def change
    add_column :contents, :medium_id, :string
  end
end