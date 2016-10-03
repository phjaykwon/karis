class RemoveNamesFromArtists < ActiveRecord::Migration[5.0]
  def change
    remove_column :artists, :first_name, :string
    remove_column :artists, :last_name, :string
  end
end
