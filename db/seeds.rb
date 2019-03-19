# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)

artist1 = Artist.create([name:"John",bio:"knee"])
artist2 = Artist.create([name:"Dum",bio:"Mee"])


genre1 = Genre.create([name:"Swag"])
genre2 = Genre.create([name:"Duck"])

song1 = Song.create([name:"Can",artist_id: artist1[0].id,genre_id: genre1[0].id])
song3 = Song.create([name:"Not Can",artist_id: artist2[0].id,genre_id: genre1[0].id])
song2 = Song.create([name:"Really Not a Can",artist_id: artist2[0].id,genre_id: genre2[0].id])
