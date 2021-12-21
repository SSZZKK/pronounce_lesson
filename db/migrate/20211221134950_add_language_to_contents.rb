class AddLanguageToContents < ActiveRecord::Migration[5.2]
  def change
    add_column :contents, :language, :string
  end
end
