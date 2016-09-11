class CreateChords < ActiveRecord::Migration[5.0]
  def change
    create_table :chords do |t|
      t.string :title
      t.references :artist, foreign_key: true
      t.references :user, foreign_key: true
      t.text :content

      t.timestamps
    end
  end
end
