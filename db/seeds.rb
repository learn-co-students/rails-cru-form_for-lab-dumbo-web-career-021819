# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)
Artist.destroy_all
Genre.destroy_all
Song.destroy_all


monet = Artist.create(name: "Monet", bio: "Bio here")
jep = Artist.create(name: "Jep", bio: "Bio here")

pop = Genre.create(name: "Pop")
rnb = Genre.create(name: "R&B")

hello = Song.create(name: "Hello", genre_id: pop.id, artist_id: jep.id)
halo = Song.create(name: "Halo", genre_id: rnb.id, artist_id: monet.id)
