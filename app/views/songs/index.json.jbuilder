json.array!(@songs) do |song|
  json.extract! song, :id, :name, :genre_id, :album_id, :artist_id
  json.url song_url(song, format: :json)
end
