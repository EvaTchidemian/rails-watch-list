# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: "Star Wars" }, { name: "Lord of the Rings" }])
#   Character.create(name: "Luke", movie: movies.first)

# movies.each do |movie|
#   Movies.create!(title: movie)
# end

require 'faker'

Movie.destroy_all
# Créer 10 films aléatoires
10.times do
  title = Faker::Movie.title
  poster_url = Faker::LoremFlickr.image(search_terms: ['movies'])
  rating = Faker::Number.between(from: 1, to: 5)
  overview = Faker::Lorem.sentences(number: 1)

  Movie.create!(title: title, overview: overview, poster_url: poster_url, rating: rating)
end
