class GenresSongsAgain < ActiveRecord::Migration
  def up
    drop_table :genre_songs
    create_table :genres_songs, :id => false do |t|
      t.integer :genre_id
      t.integer :song_id
    end
  end
end
