class AddUseridToFavorites < ActiveRecord::Migration[5.0]
  def change
    add_column :favorites, :user_id, :integer
    add_column :favorites, :chord_id, :integer
    add_index :favorites, [:user_id, :chord_id]
  end
end
