# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
Movie.create([{title: "Text M for Murder", description: "In this tale of greed and betrayal, an ex-golfer’s plot to murder his wife goes wrong and he is forced to change his plans. Will he succeed?\r\n\r\nThere are twists and turns you'll never see coming in this gripping storyline. This is a movie you don't want to miss!", mpaa_rating: "PG", runtime: 127, poster_image: "textmformurder-2x.jpg", placement: "in_theaters", has_subtitles: false, ticket_price: 12.50, release_date: "2019-11-01 00:00:00"},
{title: "Planet of the Apps", description: "Behold, a planet where Apps evolved from men!\n\nAfter a supervirus nearly wipes out mankind, the survivors flee into space, seeking a new planet to inhabit.  They find a world eerily like their own, populated only by touchscreens and habit-forming puzzle games.  Can our intrepid adventurers break out of this prison of Gorilla Glass?", mpaa_rating: "PG", runtime: 103, poster_image: "planetoftheapps-2x.jpg", placement: "in_theaters", has_subtitles: false, ticket_price: 10.95, release_date: "2019-11-07 00:00:00"},
{title: "The Typographer's Wife", description: "In this critically acclaimed Belgian award-winner, a time-travelling typesetter returns to his lovelorn widow twenty years in the future.\n\nStrange and sad moments abound as she tries to bridge the gulf of loss and forgetfulness—while all he can think about is typesetting his masterpiece.", placement: 'coming_soon', mpaa_rating: "NR", runtime: 164, poster_image: "typographerswife-2x.jpg", has_subtitles: true, ticket_price: 9.75, release_date: "2019-09-30 00:00:00"}])
