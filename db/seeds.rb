# This file should ensure the existence of records required to run the application in every environment (production,
# development, test). The code here should be idempotent so that it can be executed at any point in every environment.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Example:
#
#   ["Action", "Comedy", "Drama", "Horror"].each do |genre_name|
#     MovieGenre.find_or_create_by!(name: genre_name)
#   end
require 'faker'

genres = ["action", "horreur", "comédie", "drame"]

100.times do
  Movie.create(
    name: Faker::Movie.title,
    year: rand(1900..2020),
    genre: genres.sample,
    synopsis: Faker::Lorem.paragraph(sentence_count: 2, supplemental: true),
    director: Faker::Name.name,
    allocine_rating: rand(0.0..5.0).round(1),
    already_seen: false,
    my_rating: nil
  )
end
