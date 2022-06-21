# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
require "open-uri"

puts "Cleaning database..."
Figure.destroy_all
User.destroy_all
Purchase.delete_all

puts "Creating figures..."

gerard = User.create(nickname: "Gege", password: "azerty", email: "gerard@zoo.com")

sakura_star_bless_you = Figure.create!(name: "Card Captor Sakura", manufacturer: "Good Smile Company", price: "27,600",
version: "Star Bless You", size: "1/6", type: "Prepainted")
