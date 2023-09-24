# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: "Star Wars" }, { name: "Lord of the Rings" }])
#   Character.create(name: "Luke", movie: movies.first)

25.times do 
    Community.create(
        character: Faker::TvShows::Community.characters,
        quotes: Faker::TvShows::Community.quotes 
    )
end


# Faker::TvShows::Community.characters #=> "Jeff Winger"

# Faker::TvShows::Community.quotes #=> I fear a political career could shine a negative light on my drug dealing."