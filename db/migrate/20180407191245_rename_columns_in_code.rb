class RenameColumnsInCode < ActiveRecord::Migration[5.1]
  def change
    rename_column :codes, :code, :code_id
    rename_column :codes, :title, :desc
  end
end
