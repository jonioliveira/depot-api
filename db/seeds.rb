# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: "Star Wars" }, { name: "Lord of the Rings" }])
#   Character.create(name: "Luke", movie: movies.first)
Product.delete_all
# . . .
Product.create!(title: "Seven Mobile Apps in Seven Weeks",
  description: "Native Apps, Multiple Platforms",
  image_url: "7apps.jpg",
  price: 26.00)
# . . .
