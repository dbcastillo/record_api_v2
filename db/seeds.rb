# This file should ensure the existence of records required to run the application in every environment (production,
# development, test). The code here should be idempotent so that it can be executed at any point in every environment.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Example:
#
#   ["Action", "Comedy", "Drama", "Horror"].each do |genre_name|
#     MovieGenre.find_or_create_by!(name: genre_name)
#   end
Record.create!([
  {
    album: "Thriller",
    artist: "Michael Jackson",
    year: 1982,
    price: 29.99,
    cover: "https://example.com/thriller.jpg"
  },
  {
    album: "Kind of Blue",
    artist: "Miles Davis",
    year: 1959,
    price: 19.99,
    cover: "https://example.com/kindofblue.jpg"
  },
  {
    album: "Back to Black",
    artist: "Amy Winehouse",
    year: 2006,
    price: 24.99,
    cover: "https://example.com/backtoblack.jpg"
  }
])
