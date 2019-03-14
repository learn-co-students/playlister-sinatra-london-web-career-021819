# # Add seed data here. Seed your database with `rake db:seed`
#
#
# ar1 = Artist.create(name: "Taylor Swift")
# ar2 = Artist.create(name: "Drake")
# ar3 = Artist.create(name: "Queen")
#
# gen1 = Genre.create(name: "Pop")
# gen2 = Genre.create(name: "Rap")
# gen3 = Genre.create(name: "Rock")
#
#
#
# s1 = Song.create(artist_id: ar1.id, name: "Shake it")
# s2 = Song.create(artist_id: ar1.id, name: "Incrementally")
# s3 = Song.create(artist_id: ar2.id, name: "Bop bop")
# s4 = Song.create(artist_id: ar2.id, name: "Yo drake")
# s5 = Song.create(artist_id: ar3.id, name: "One Vision")
# s6 = Song.create(artist_id: ar3.id, name: "Woop")
#
#
# SongGenre.create(genre_id: gen1.id, song_id: s1.id)
# SongGenre.create(genre_id: gen2.id, song_id: s2.id)
# SongGenre.create(genre_id: gen3.id, song_id: s3.id)
# SongGenre.create(genre_id: gen1.id, song_id: s4.id)
# SongGenre.create(genre_id: gen2.id, song_id: s5.id)
# SongGenre.create(genre_id: gen3.id, song_id: s1.id)
# SongGenre.create(genre_id: gen1.id, song_id: s6.id)


LibraryParser.parse
