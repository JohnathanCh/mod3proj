# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
# t.string :name
# t.float :collectionPrice
# t.string :artworkUrl100
newAlbum = Album.create(collectionName: "johhny album", artistName: "jimmy the band", collectionPrice: 12.99,artworkUrl100: "www.album")
Album.create(collectionName: "john album",artistName: "john the band",collectionPrice: 10.99,artworkUrl100: "www.album")
Album.create(collectionName: "chris'",artistName: "chris the band",collectionPrice: 12.99,artworkUrl100: "www.album")
Album.create(collectionName: "DanTheMan",artistName: "dan the band",collectionPrice: 120.99,artworkUrl100: "www.album")

dan = User.create(username: "DanTheMan",password: "password")
john = User.create(username: "john",password: "password")
chris = User.create(username: "chris",password: "password")

LikedAlbum.create({user_id: dan.id, album_id: newAlbum.id})
LikedAlbum.create({user_id: dan.id, album_id: 2})
LikedAlbum.create({user_id: chris.id, album_id: newAlbum.id})

# work = Playlist.create(user_id: dan.id, playlist_name: "Workout Yams")
# Playlist.create(user_id: john.id,playlist_name: "chill mix")
# Playlist.create(user_id: chris.id, playlist_name: "Heavy death metal xtreme")

# LikedAlbum.create(playlist_id: work.id, album_id: 1)
