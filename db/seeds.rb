# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: "Star Wars" }, { name: "Lord of the Rings" }])
#   Character.create(name: "Luke", movie: movies.first)
AdminUser.create!(email: 'admin@example.com', password: 'password', password_confirmation: 'password') if Rails.env.development?
# Item.create(name: "2x3", height: 2, width: 3, units: 6)
# Item.create(name: "3x3", height: 3, width: 3, units: 9)
# Item.create(name: "4x3", height: 3, width: 4, units: 12)
# Item.create(name: "4x4", height: 4, width: 4, units: 16)
# Item.create(name: "5x4", height: 5, width: 4, units: 20)
# Item.create(name: "6x4", height: 6, width: 4, units: 24)
