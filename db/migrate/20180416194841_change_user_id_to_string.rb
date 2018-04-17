class ChangeUserIdToString < ActiveRecord::Migration[5.1]
  def change
    remove_index :favorites, name: "index_favorites_on_user_id"
    remove_column :favorites, :user_id, :integer
    add_column :favorites, :user_id, :string
  end
end
