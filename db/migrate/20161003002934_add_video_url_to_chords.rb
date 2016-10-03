class AddVideoUrlToChords < ActiveRecord::Migration[5.0]
  def change
    add_column :chords, :video_url, :string
  end
end
