class AddSubjectToContents < ActiveRecord::Migration[5.2]
  def change
    add_column :contents, :subject, :string
  end
end
